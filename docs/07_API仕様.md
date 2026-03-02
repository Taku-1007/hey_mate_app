# HeyMate API仕様（Draft / Firebase前提）

## 1. 方針
- バックエンドはFirebaseのみを利用する。
- クライアントは必要に応じて Firestore 直接アクセス + Cloud Functions 呼び出しを使い分ける。

## 2. 認証
### Firebase Authentication
- メール/パスワード
- Google Sign-In
- Apple Sign-In

## 3. FirestoreコレクションI/F（概要）
### `users`
- 用途: ユーザープロフィール
- 主キー: `uid`
- 主フィールド: nickname, age, gender, homeCity, goals, visibility

### `matches`
- 用途: マッチ成立情報
- 主キー: `matchId`
- 主フィールド: userA, userB, matchedAt, status

### `chatRooms`
- 用途: チャット部屋
- 主キー: `roomId`
- 主フィールド: matchId, consent flags, updatedAt

### `messages`
- 用途: メッセージ
- 主キー: `messageId`
- 主フィールド: roomId, senderUid, text, sentAt, readAt

### `reports`
- 用途: 通報
- 主キー: `reportId`
- 主フィールド: reporterUid, targetUid, reason, status, createdAt

## 4. Cloud Functions（論理API）
### `submitSwipe`
- 入力: `toUid`, `action(like|skip)`
- 出力: `isMatch`, `matchId?`
- 失敗: invalid-argument / permission-denied / internal

### `createOrGetChatRoom`
- 入力: `matchId`
- 出力: `roomId`
- 制約: 当事者のみ実行可

### `submitReport`
- 入力: `targetUid`, `reason`, `messageIds?`
- 出力: `reportId`
- 制約: 認証済みのみ

### `requestAccountDeletion`
- 入力: なし
- 出力: `requestId`, `status`

## 5. エラー設計
- `unauthenticated`: 未ログイン
- `permission-denied`: 権限不足
- `failed-precondition`: マッチ未成立など状態不正
- `not-found`: 対象不存在
- `resource-exhausted`: レート制限

## 6. レート制限（初期案）
- スワイプ: 1分あたり上限N回
- 通報: 同一対象への連続通報にクールダウン
- メッセージ送信: スパム防止の短時間上限

## 7. 監査項目
- 重要操作（通報、凍結、削除依頼）はCloud Loggingに記録

## 8. 未決定事項
- Functionsの命名規約
- リージョン選定（レイテンシ/コスト）

