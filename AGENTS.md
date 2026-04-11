# AI Scaffold Instructions

このリポジトリは、Claude Code と Codex で共有する AI scaffold。

repo-wide の前提、考え方、判断基準はこのファイルと `RULES.md` / `WORKING-CONTEXT.md` に置く。  
`skills/` は task-shaped な workflow surface に限定し、repo 全体の思想や current truth を詰め込まない。

## Core Principles

1. まず「相談 / 調査 / 比較検討 / 設計 / 実装 / レビュー」のどれが求められているかを切り分ける。
2. 実装が求められていないなら、無理にコード変更へ進めない。
3. repo 固有の前提や運用ルールは shared docs を正本にし、skill には task-specific な workflow だけを置く。
4. 既存案に引きずられず、必要なら抽象化や前提の見直しを行う。
5. 前提、トレードオフ、残るリスクを明示する。

## Workflow Surface Policy

- repo-wide の前提と current truth:
  - `AGENTS.md`
  - `RULES.md`
  - `WORKING-CONTEXT.md`
- task-specific workflow:
  - `.agents/skills/implementation/`
  - `.agents/skills/code-review/`
  - `.agents/skills/browser-analysis/`
  - `.agents/skills/ux-performance-audit/`

## Skill Routing

- 実装や検証が中心なら `implementation`
- 既存差分のレビューが中心なら `code-review`
- ブラウザ解析なら `browser-analysis`
- performance / accessibility / UIUX 監査なら `ux-performance-audit`

repo-wide の前提確認のためだけに dedicated skill は使わない。  
その役割は root docs 側で持つ。
