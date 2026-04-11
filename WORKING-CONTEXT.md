# Working Context

Last updated: 2026-04-11

## Purpose

Claude Code と Codex で共有する AI scaffold。  
repo-wide の前提と current truth は root docs に置き、skills は task-shaped な workflow surface に保つ。

## Current Truth

- repo-wide context の正本:
  - `AGENTS.md`
  - `RULES.md`
  - `WORKING-CONTEXT.md`
- Claude Code project memory:
  - `CLAUDE.md`
- active skills:
  - `.agents/skills/project-delivery/`
  - `.agents/skills/browser-analysis/`
  - `.agents/skills/ux-performance-audit/`

## Recent Structural Decision

- `project-shared` は廃止した。
- 理由:
  - repo-wide の前提や考え方は skill ではなく root docs で持つ方が自然。
  - 実装系 workflow は `project-delivery` に分けた方が task routing が明確。
  - `skills` は reusable な workflow surface として保ちたい。

## Update Rule

- このファイルには current truth と active な構成判断だけを書く。
- 長期的な不変ルールは `RULES.md` へ寄せる。
- 抽象的な考え方は `AGENTS.md` に寄せる。
