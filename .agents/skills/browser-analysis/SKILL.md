---
name: browser-analysis
description: Chrome DevTools MCP を使って Web サイトや Web アプリを解析するための Skill。表示崩れ、JavaScript エラー、console error、network failure、API 失敗、DOM 状態の確認、画面キャプチャ、performance 劣化、操作不能、ログインやセッション不具合など、ブラウザ上の挙動を根拠付きで調査したいときに使う。
---

# Browser Analysis

## 概要

Chrome DevTools MCP を使ったブラウザ解析の手順を統一するための Skill です。症状ごとに見る順番を揃え、観測事実と推測を分けて報告します。

## クイックスタート

- 対象 URL、問題の症状、再現手順、ログイン要否を確認する。
- `references/analysis-workflow.md` を読んで、症状に応じた調査順を決める。
- 結果を返す前に `references/report-format.md` を読み、確定事項と推測を分けて整理する。
- Chrome DevTools MCP がこのセッションで利用できない場合は、その事実を先に伝え、代替手段か再実行方法を案内する。

## 基本フロー

1. 症状と再現条件を整理する。
2. 実際に再現し、console・network・DOM・screenshot などの一次情報を取る。
3. 必要に応じて performance、storage、cookie、認証状態まで掘る。
4. 観測事実から根本原因を絞り込み、修正方針を整理する。
5. 証拠、原因、未確定事項を分けて報告する。

## 症状ごとの入り口

- JavaScript エラーやボタン不具合: console と network から入る。
- API 失敗やデータ欠落: network と response payload を先に見る。
- 表示崩れやレイアウト問題: screenshot、DOM、computed style を先に見る。
- 初回表示が遅い、操作が重い: performance trace と network waterfall を見る。
- ログインやセッション問題: cookie、storage、redirect、認証 API を確認する。

## リソース

### `references/analysis-workflow.md`

症状別の調査順、見るべき観点、MCP が使えない場合の扱いを定義する。

### `references/report-format.md`

調査結果を返すときの構成と、確定事項と推測の分け方を定義する。
