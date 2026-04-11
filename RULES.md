# Rules

## Must Always

- 提案や編集に入る前に、依頼と関係するファイルを読む。
- まず今回の依頼が相談、調査、設計、実装、レビューのどれかを切り分ける。
- repo-wide の前提やルールを変えるときは、skill より先に `AGENTS.md` / `RULES.md` / `WORKING-CONTEXT.md` を更新する。
- skills は task-specific かつ reusable な workflow に絞る。
- 前提、トレードオフ、残るリスクを明示する。

## Must Never

- repo 全体の前提や current truth を 1つの skill に抱え込まない。
- 実装が不要な依頼で、無理にコード変更へ進めない。
- 同じルールを `README.md`、`CLAUDE.md`、skill の reference に重複して散らさない。
- task-specific ではない抽象的な思想を、skill workflow として書かない。

## Skill Design

- root docs:
  - repo-wide の前提
  - stable rules
  - current truth
- skills:
  - 特定用途の workflow
  - domain knowledge
  - task-specific references

## Current Skill Policy

- `implementation` は実装と検証の workflow を持つ。
- `code-review` は既存差分のレビュー workflow を持つ。
- `browser-analysis` と `ux-performance-audit` は Web 解析系を持つ。
- repo 全体の抽象的な考え方は root docs に集約する。
