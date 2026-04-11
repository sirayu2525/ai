---
name: implementation
description: このリポジトリで実装と検証を進めるための実務 Skill。コード変更や動作確認が必要なときに、repo 固有の implementation workflow と quality bar を適用したいときに使う。
---

# Implementation

## 概要

このリポジトリで実装と検証を進めるための Skill です。repo 全体の前提や判断基準は root docs 側で持ち、こちらはコード変更と確認の進め方だけを扱います。

## クイックスタート

- 最初に `../../../AGENTS.md` を読む。
- stable なルール確認のために `../../../RULES.md` を読む。
- current truth の確認のために `../../../WORKING-CONTEXT.md` を読む。
- 実装や検証の前に `references/implementation-workflow.md` を読む。
- リポジトリの状態把握には、必要に応じて `git status --short` や `rg --files` を使う。

## ワークフロー

1. 依頼内容、関連ファイル、リポジトリ状態から文脈を組み立てる。
2. スコープ、前提、変更方針を短く整理する。
3. 局所修正に引きずられず、必要なら責務分離や抽象化を含めて実装方針を組み直す。
4. 実装後はまず狭く有効な検証を行い、必要なら広げる。
5. 変更内容、残るリスク、未実施の確認を明示する。

## リソース

### `../../../AGENTS.md`

このリポジトリ全体の前提と workflow surface policy を確認する。

### `../../../RULES.md`

stable な rules を確認する。

### `../../../WORKING-CONTEXT.md`

current truth を確認する。

### `references/implementation-workflow.md`

実装、検証、締め方の具体的な進め方を確認する。
