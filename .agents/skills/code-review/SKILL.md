---
name: code-review
description: このリポジトリでコードレビューを進めるための Skill。既存差分を読み、バグ、回帰リスク、設計上の問題、テスト不足を洗い出したいときに使う。
---

# Code Review

## 概要

このリポジトリで既存差分のレビューを進めるための Skill です。新しい実装を進めるのではなく、すでにある変更を読み、問題点や残るリスクを整理することに集中します。

## クイックスタート

- 最初に `../../../AGENTS.md` を読む。
- stable なルール確認のために `../../../RULES.md` を読む。
- current truth の確認のために `../../../WORKING-CONTEXT.md` を読む。
- レビューに入る前に `references/review-workflow.md` を読む。
- 指摘観点の確認に `references/review-checklist.md` を読む。

## ワークフロー

1. 依頼内容、差分、関連ファイルからレビュー対象を特定する。
2. 正しさのバグ、回帰、検証漏れ、テスト不足を優先して確認する。
3. 必要に応じて設計、責務分離、命名、保守性の観点まで広げる。
4. 指摘事項をファイルと行番号付きで整理し、要約や前提と分けて伝える。
5. 指摘がない場合も、そのことと残るリスクを明示する。

## リソース

### `../../../AGENTS.md`

このリポジトリ全体の前提と workflow surface policy を確認する。

### `../../../RULES.md`

stable な rules を確認する。

### `../../../WORKING-CONTEXT.md`

current truth を確認する。

### `references/review-workflow.md`

レビューの進め方とまとめ方を確認する。

### `references/review-checklist.md`

指摘観点を確認する。
