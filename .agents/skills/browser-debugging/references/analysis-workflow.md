# Browser Debugging Workflow

## 前提確認

- 対象 URL、対象画面、再現手順、期待挙動、実際の挙動を確認する。
- ログインが必要か、テスト用アカウントが必要かを確認する。
- 本番環境かローカル環境かを明示する。
- Chrome DevTools MCP がこのセッションで利用可能かを先に確認する。

## 症状別の入り方

### JavaScript エラー / ボタン不具合

- まず再現する。
- console の error / warning を確認する。
- 関連する network request と response を確認する。
- 必要なら DOM 状態とイベント発火結果を確認する。

### API 失敗 / データが出ない

- network request を優先して確認する。
- status code、request payload、response body、timing を見る。
- redirect、認証切れ、CORS、キャッシュの影響を切り分ける。

### 表示崩れ / スタイル不具合

- screenshot を取得して現象を固定する。
- DOM 構造、computed style、class の付与状態を確認する。
- レスポンシブ条件や viewport 差分がある場合はそれも比較する。

### 遅い / 重い

- performance trace を取り、長い task、layout、paint、network 待ちを確認する。
- 不要な request、巨大な asset、render blocking を確認する。
- 体感の遅さと trace 上のボトルネックを結びつける。

### ログイン / セッション不具合

- redirect の流れを確認する。
- cookie、local storage、session storage、認証 API の返り値を確認する。
- 期限切れ、SameSite、環境差分、権限差分を疑う。

## 共通ルール

- まず再現し、その後で証拠を集める。
- 確認した事実と、そこからの推測を混ぜない。
- 可能なら console、network、screenshot、trace のどれを根拠にしたか明示する。
- 一時しのぎの説明ではなく、根本原因に近い仮説まで詰める。

## MCP が使えない場合

- MCP がこのセッションで使えないことを明示する。
- 使えるなら通常の web 調査やコード調査へ切り替える。
- MCP 前提の確認が必要なら、Claude Code か MCP 有効な Codex セッションでの再実行を案内する。
