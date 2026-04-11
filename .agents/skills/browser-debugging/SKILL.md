---
name: browser-debugging
description: Chrome DevTools MCP を使って、Web サイトや Web アプリの console、network、DOM、performance、認証状態を調べるための基本 Skill。ブラウザ上の不具合や原因調査に使う。
---

# Browser Debugging

## 概要

Chrome DevTools MCP を使ってブラウザ上の不具合を調査するための基本 Skill です。表示崩れ、JavaScript エラー、API 失敗、重さ、ログイン不具合などの原因を、一次情報ベースで掘ります。

## クイックスタート

- 対象 URL、問題の症状、再現手順、ログイン要否を確認する。
- `references/analysis-workflow.md` を読んで、症状に応じた調査順を決める。
- 結果を返す前に `references/report-format.md` を読み、確定事項と推測を分けて整理する。
- Chrome DevTools MCP がこのセッションで利用できない場合は、その事実を先に伝え、代替手段か再実行方法を案内する。

## 基本フロー

1. 症状と再現条件を整理する。
2. 実際に再現し、console、network、DOM、screenshot、trace などの一次情報を取る。
3. 観測事実から根本原因を絞り込む。
4. 証拠、原因、未確定事項を分けて報告する。

## リソース

### `references/analysis-workflow.md`

症状別の調査順、見るべき観点、MCP が使えない場合の扱いを定義する。

### `references/report-format.md`

調査結果を返すときの構成と、確定事項と推測の分け方を定義する。
