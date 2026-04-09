---
name: project-shared
description: このリポジトリ用の planning・implementation・code review ガイド。プロジェクト固有の進め方、再利用できる review 観点、同梱された reference や helper script が必要な作業で使う。
---

# Project Shared

## 概要

汎用的なやり方ではなく、このリポジトリで共有したい進め方を適用するための Skill です。詳細ルールは同梱の reference を正本として扱い、ツール固有のラッパーは薄く保ちます。

## クイックスタート

- リポジトリ固有の前提を確認したいときは、最初に `references/project-context.md` を読む。
- planning やコード変更の前に `references/implementation-workflow.md` を読む。
- review や最終確認の前に `references/review-checklist.md` を読む。
- リポジトリの状態を素早く把握したいときは `scripts/project-scan.sh <repo-root>` を使う。

## ワークフロー

1. 依頼内容、関連ファイル、現在のリポジトリ状態から文脈を組み立てる。
2. planning・implementation・review の基準として同梱 reference を使う。
3. 必要なら抽象化や設計の見直しを含めて、より良い実装方針を選ぶ。
4. まずは狭く有効な検証を行い、必要なら広げる。
5. 前提、残るリスク、未実施の確認を明示する。

## リソース

### `references/project-context.md`

この scaffold を育てるうえでの基本方針と、リポジトリ前提のルールを確認する。

### `references/implementation-workflow.md`

planning やコード編集の前に読む。

### `references/review-checklist.md`

review や最終検証の前に読む。

### `scripts/project-scan.sh`

初期コンテキストが薄いときに、リポジトリの概要を素早く把握するために使う。
