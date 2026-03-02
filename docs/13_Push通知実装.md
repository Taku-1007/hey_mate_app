# HeyMate Push通知実装ガイド（Firebase Cloud Messaging）

## 1. 目的
- マッチ成立、新着メッセージ、運営連絡をユーザーへ即時通知する。
- 通知のオン/オフ、通知種別ごとの受信設定を提供する。
- 通知配信の失敗率と遅延を可視化し、運用可能な状態にする。

## 2. 前提
- 本ドキュメントは、MVPでPush通知を導入する方針を前提とする。
- Firebaseサービスとして `Firebase Cloud Messaging（FCM）` を採用する。
- 対象プラットフォームは iOS / Android（Flutterアプリ）とする。

## 3. 対応スコープ
### 3.1 配信イベント
- マッチ成立通知
- 新着メッセージ通知
- 運営からの重要連絡通知（凍結、警告、規約更新など）

### 3.2 非対応（初期）
- サイレント通知によるバックグラウンド重処理
- 通知内リッチメディア（画像付き通知）
- 高度なパーソナライズ配信

## 4. 全体構成
1. クライアントがFCMトークンを取得する。
2. クライアントがトークンを `users/{uid}/devices/{deviceId}` に保存する。
3. Cloud Functionsがイベント発生時に対象ユーザーのトークン一覧を取得する。
4. FunctionsからFCMへ通知送信する。
5. 無効トークンは送信レスポンスを元に削除する。

## 5. データ設計（追加）
### `users/{uid}/devices/{deviceId}`
- `token`: FCM registration token
- `platform`: `ios | android`
- `appVersion`: アプリバージョン
- `locale`: 端末ロケール（例: `ja-JP`）
- `timezone`: タイムゾーン（例: `Asia/Tokyo`）
- `notificationEnabled`: 端末単位の通知許可フラグ
- `updatedAt`: 更新日時
- `lastSeenAt`: 最終アクティブ日時

### `users/{uid}/notificationSettings/main`
- `matchEnabled`: マッチ通知の受信可否
- `messageEnabled`: メッセージ通知の受信可否
- `operationEnabled`: 運営連絡通知の受信可否
- `quietHoursStart`: おやすみ開始時刻（任意）
- `quietHoursEnd`: おやすみ終了時刻（任意）
- `updatedAt`: 更新日時

### `notificationLogs/{logId}`（運用向け）
- `uid`: 送信対象ユーザー
- `type`: `match | message | operation`
- `status`: `success | failed | partial`
- `errorCode`: 失敗時のエラーコード
- `createdAt`: 送信日時

## 6. Cloud Functions仕様
### `sendMatchNotification`
- トリガー: `matches/{matchId}` の作成時
- 配信対象: `userA`, `userB`
- 送信条件: `matchEnabled == true`

### `sendMessageNotification`
- トリガー: `messages/{messageId}` の作成時
- 配信対象: 送信者以外のチャット参加者
- 送信条件: `messageEnabled == true` かつ ブロック関係がない

### `sendOperationNotification`
- トリガー: 運営アクション実行時（Callable Functionまたは管理画面経由）
- 配信対象: 対象ユーザー
- 送信条件: `operationEnabled == true`

### 共通要件
- 送信先トークンが0件の場合は処理終了（エラーにしない）
- 送信失敗トークン（`not-registered` 等）は削除
- 成功/失敗件数を `notificationLogs` と Cloud Logging に記録

## 7. クライアント実装要件（Flutter）
### 7.1 初期化
- `firebase_core` / `firebase_messaging` を導入する。
- アプリ起動時にFCM初期化を行う。
- iOSは通知許可ダイアログを表示し、許可状態を保存する。

### 7.2 トークン管理
- 初回起動時にトークン取得して保存する。
- `onTokenRefresh` でトークン更新時に再保存する。
- ログアウト時は対象 `device` ドキュメントを削除する。

### 7.3 通知受信時の挙動
- フォアグラウンド: アプリ内バナー表示
- バックグラウンド/終了時: OS通知センター表示
- タップ時: 種別ごとに画面遷移
  - `match` -> マッチ一覧
  - `message` -> 対象チャットルーム
  - `operation` -> 通知詳細画面

### 7.4 通知設定UI
- 通知全体オン/オフ
- 種別ごとのオン/オフ
- おやすみ時間帯設定（任意）

## 8. プラットフォーム設定
### 8.1 Android
- FCM設定ファイル（`google-services.json`）を配置
- 通知チャネルを定義（`match`, `message`, `operation`）
- Android 13以降の通知許可を実装

### 8.2 iOS
- FCM設定ファイル（`GoogleService-Info.plist`）を配置
- APNsキーをFirebase Consoleへ登録
- Xcodeで `Push Notifications` / `Background Modes` を有効化

## 9. セキュリティ・プライバシー
- FCMトークンは本人の `devices` 配下のみ更新可能にする。
- 通知ペイロードに個人情報・機微情報を含めない。
- メッセージ通知本文は簡素化し、詳細内容はアプリ内表示に限定する。
- 退会時にトークンおよび通知設定を削除する。

## 10. 監視と運用
- Cloud Loggingで通知送信エラー率を可視化する。
- 失敗率が閾値超過した場合にアラート通知を行う。
- 月次で「送信数 / 成功率 / 平均遅延」をレビューする。

## 11. テスト計画
### 11.1 Unit Test
- 配信対象抽出ロジック
- 通知設定によるフィルタリング
- 無効トークン削除ロジック

### 11.2 Integration Test
- マッチ成立時に双方へ通知される
- メッセージ送信時に相手へ通知される
- 設定オフ時に通知されない

### 11.3 実機テスト
- iOS / Android でフォアグラウンド受信
- バックグラウンド受信
- 通知タップ時の画面遷移

## 12. ロールアウト手順
1. `dev` 環境でFCM疎通確認
2. 社内テストユーザーへ段階配信
3. 障害率・遅延を監視しながら `prod` へ展開
4. リリース後1週間は日次モニタリング

## 13. 受け入れ基準
- 各配信イベントで対象ユーザーに通知が届く。
- 通知設定オフ時に対象通知が送信されない。
- 無効トークンが自動的に削除される。
- 通知タップで期待画面へ遷移する。
- 送信ログから成功率・失敗理由を追跡できる。

## 14. 参考書
- Firebase公式ドキュメント（Flutterでのメッセージ受信）  
  https://firebase.google.com/docs/cloud-messaging/flutter/receive-messages?hl=ja
