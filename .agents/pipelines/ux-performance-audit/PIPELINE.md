# UX Performance Audit Pipeline

## 使うとき

- サイトやアプリの UI/UX、performance、accessibility をまとめて監査したいとき
- まず体験を見て、その後に技術的根拠まで取りたいとき

## 使う基本 skills

- `research`
- `web-flow-inspection`
- `browser-debugging`

## 進め方

- 以下は代表フローであり、体験確認から原因調査へ進んだり、前提確認のために `research` に戻ったりと、基本 skills を自由に行き来してよい。

1. `research` で対象画面、主要フロー、気になる症状を整理する。
2. `web-flow-inspection` で実際の体験上の違和感や導線の詰まりを確認する。
3. `browser-debugging` で必要なところだけ console、network、performance、DOM の根拠を取る。
4. 重要度、ユーザー影響、修正コストで整理して返す。

## 依頼例

- 「このサイトの UX と performance の改善点を洗い出して」
- 「会員登録フローを監査して」
