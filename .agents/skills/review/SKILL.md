---
name: review
description: 既存の変更や成果物を読み、問題点、回帰リスク、改善余地を指摘するための基本 Skill。コードレビューが主だが、文書や構成レビューにも使える。
---

# Review

## 概要

既存の差分や成果物を読み、何が危ないか、何が弱いかを整理して返すための基本 Skill です。コードレビューが主な用途ですが、文書や構成のレビューにも使えます。

この Skill の主責務は「対象を評価し、問題点、リスク、改善余地を指摘する」ことです。証拠が足りなければ `research` や `verification` で補強できますが、主目的はあくまで評価と指摘です。

## クイックスタート

- repo-wide docs は `../../../AGENTS.md` の方針に従って確認する。
- レビュー対象と、何を重視するレビューかを確認する。
- `references/review-workflow.md` と `references/review-checklist.md` を読む。

## 基本フロー

1. 対象とレビュー観点を特定する。
2. 正しさの問題、回帰、検証漏れを優先して見る。
3. 必要に応じて設計、責務分離、命名、分かりやすさまで広げる。
4. findings を優先して整理し、残るリスクを添える。

## リソース

### repo-wide docs

`../../../AGENTS.md` を入口に、必要に応じて `../../../RULES.md` / `../../../WORKING-CONTEXT.md` / `../../../CONVENTIONS.md` を確認する。

### `references/review-workflow.md`

レビューの進め方とまとめ方を確認する。

### `references/review-checklist.md`

指摘観点を確認する。
