---
name: ux-performance-audit
description: Playwright MCP と Chrome DevTools MCP を使って Web サイトや Web アプリの performance、accessibility、UI/UX を改善するための Skill。表示速度、Core Web Vitals、操作導線、画面の分かりやすさ、フォーム体験、レスポンシブ品質、アクセシビリティ、導線の詰まり、操作感の悪さなどを会話ベースで監査し、改善提案したいときに使う。
---

# UX Performance Audit

## 概要

Playwright MCP と Chrome DevTools MCP を組み合わせて、会話ベースで改善しやすい監査フローを提供する Skill です。まず実ブラウザで体験を確認し、その後に必要なところだけ深掘りします。

## クイックスタート

- 対象 URL、確認したい画面、気になる症状を整理する。
- `references/audit-workflow.md` を読んで、監査の順番を決める。
- `references/command-recipes.md` を読んで、必要な MCP ベースの進め方を選ぶ。
- 深掘り調査が必要なら `.agents/skills/browser-analysis/` を使う。

## ツールの役割

- Playwright MCP: 実際の画面遷移、操作フロー、スクリーンショット、UI の詰まりを対話的に確認する。
- Chrome DevTools MCP: console、network、performance、DOM を深掘りする。
- browser-analysis: 監査で見つかった問題の原因を深掘りする。

## 基本フロー

1. Playwright MCP で実際に画面を触り、UI/UX 上の違和感や導線の詰まりを確認する。
2. Chrome DevTools MCP で performance、network、DOM、console の観点から根拠を取る。
3. 問題を重要度、ユーザー影響、修正コストで整理する。
4. 原因が曖昧な箇所だけ `browser-analysis` に切り替えて掘る。
5. 修正案は場当たり対応ではなく、継続的に改善しやすい形で返す。

## リソース

### `references/audit-workflow.md`

監査の順番、優先度の付け方、観点ごとの見方を定義する。

### `references/command-recipes.md`

実際に使うコマンドと成果物の見方を定義する。
