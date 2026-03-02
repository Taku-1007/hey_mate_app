# HeyMate Firebase要件（MVP）

## 1. 目的
- HeyMateのMVPで必要なバックエンド機能をFirebaseで実現する。
- 認証・プロフィール・マッチング・チャット・安全管理を、最小構成で運用できる状態にする。
- `push通知はMVPでは実装しない`。

## 2. 採用サービス（MVP）
- Firebase Authentication
  - メール / Google / Apple ログイン
- Cloud Firestore
  - ユーザー、マッチング、チャット、通報、ブロック等の永続化
- Cloud Functions
  - マッチ成立判定、通報受付、退会処理などのサーバーサイドロジック
- Firebase Storage
  - 顔写真、本人確認関連のファイル保存（必要最小限）
- Firebase App Check
  - 不正リクエスト対策
- Firebase Crashlytics / Analytics
  - クラッシュ監視、利用状況の把握

## 3. 非採用サービス（MVP）
- Firebase Cloud Messaging（FCM）
  - 理由: MVPではPush通知を提供しないため
- Remote Config
  - 理由: 初期は運用複雑性を下げるため

## 4. データ設計（初期）
### `users`
- 主キー: `uid`
- 必須: `nickname`, `age`, `gender`, `homeCity`, `goals`, `createdAt`, `updatedAt`

### `verifications`
- 主キー: `uid`
- 必須: `idCheckStatus`, `facePhotoPath`, `updatedAt`
- `idCheckStatus`: `pending | approved | rejected`

### `swipes`
- 主キー: 自動採番
- 必須: `fromUid`, `toUid`, `action`, `createdAt`
- `action`: `like | skip`

### `matches`
- 主キー: `matchId`
- 必須: `userA`, `userB`, `matchedAt`, `status`
- `status`: `active | archived`

### `chatRooms`
- 主キー: `roomId`
- 必須: `matchId`, `gymShareConsentA`, `gymShareConsentB`, `updatedAt`

### `messages`
- 主キー: `messageId`
- 必須: `roomId`, `senderUid`, `text`, `sentAt`
- 任意: `readAt`

### `reports`
- 主キー: `reportId`
- 必須: `reporterUid`, `targetUid`, `reason`, `status`, `createdAt`
- `status`: `open | reviewing | resolved`

### `blocks`
- 主キー: 自動採番
- 必須: `blockerUid`, `blockedUid`, `createdAt`

### `deletionRequests`
- 主キー: `uid`
- 必須: `requestedAt`, `status`, `updatedAt`
- `status`: `requested | processing | completed | rejected`

## 5. セキュリティ要件
- 認証必須: Firestoreは原則 `request.auth != null` を要求する。
- プロフィール更新: 本人ドキュメント（`users/{uid}`）のみ更新可能。
- チャット: `matches` の当事者のみ `chatRooms` / `messages` にアクセス可能。
- 通報: 作成は認証済みユーザーのみ、閲覧は運営権限のみ。
- ブロック: 本人が作成したブロック情報のみ作成・削除可能。
- App Checkを有効化し、正規クライアント以外のアクセスを抑制する。

## 6. Cloud Functions要件（論理API）
### `submitSwipe`
- 入力: `toUid`, `action`
- 出力: `isMatch`, `matchId?`
- 要件: 重複Like防止、自己Like禁止、ブロック関係の事前チェック

### `createOrGetChatRoom`
- 入力: `matchId`
- 出力: `roomId`
- 要件: 当事者チェック、未成立マッチでの作成禁止

### `submitReport`
- 入力: `targetUid`, `reason`, `messageIds?`
- 出力: `reportId`
- 要件: レート制限、監査ログ記録

### `requestAccountDeletion`
- 入力: なし
- 出力: `requestId`, `status`
- 要件: 本人確認、論理削除フロー開始、監査ログ記録

## 7. 運用要件
- 監査ログ
  - 通報、ブロック、凍結、削除依頼はCloud Loggingへ記録
- バックアップ
  - Firestore定期エクスポートを設定（最低日次）
- 障害検知
  - Crashlyticsアラートを有効化
- 対応SLA（初期案）
  - 通報一次確認: 24時間以内

## 8. コスト要件（初期）
- 初期は無料枠中心で運用し、利用増加時に従量課金へ移行する。
- 課金影響が大きい操作（読み取り回数・Functions実行回数）を計測する。
- 予算超過防止のため、Firebase予算アラートを設定する。

## 9. 環境分離要件
- Firebaseプロジェクトは `dev` と `prod` を分離する。
- `google-services.json` / `GoogleService-Info.plist` は環境別に管理する。
- 認証プロバイダ設定（Google/Apple）は環境ごとに分離する。

## 10. 受け入れ基準
- 未ログイン状態でFirestore主要データにアクセスできない。
- 非マッチユーザー間でチャットルーム作成・メッセージ送信ができない。
- 通報操作後に `reports` と監査ログの両方へ記録される。
- 退会依頼後に `deletionRequests` が作成され、対象ユーザーが論理削除状態へ遷移する。
- Push通知関連の設定・実装がMVPに含まれていない。
