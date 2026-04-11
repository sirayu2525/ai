---
name: web-flow-inspection
description: Playwright MCP を使って、Web サイトや Web アプリの画面遷移、フォーム体験、導線、レスポンシブ表示を確認するための基本 Skill。UI 上の違和感や詰まりを見つけたいときに使う。
---

# Web Flow Inspection

## 概要

Playwright MCP を使って、実際の操作フローをなぞりながら画面体験を確認するための基本 Skill です。情報の優先順位、CTA、フォーム、読み込み状態、レスポンシブ崩れなどを観測します。

## クイックスタート

- 対象 URL、確認したい画面、代表的な操作フローを整理する。
- `references/inspection-workflow.md` を読んで、どの順番で見るかを決める。
- 必要ならスクリーンショットや操作メモを残す。
- 原因調査が必要になったら `browser-debugging` に渡す。

## 基本フロー

1. 初見ユーザーとして主要フローをなぞる。
2. CTA、情報の優先順位、フォーム、読み込み状態、エラー状態を確認する。
3. モバイル幅やレスポンシブ差分が必要なら追加で確認する。
4. 体験上の違和感と、その根拠になる操作手順を整理する。

## リソース

### `references/inspection-workflow.md`

画面フロー確認の進め方、見る観点、まとめ方を確認する。

### `references/report-format.md`

観測結果を返すときの構成を確認する。
