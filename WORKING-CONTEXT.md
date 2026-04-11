# Working Context

Last updated: 2026-04-12

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
  - `.agents/skills/implementation/`
  - `.agents/skills/code-review/`
  - `.agents/skills/browser-analysis/`
  - `.agents/skills/ux-performance-audit/`

## Update Rule

- このファイルには current truth と現在有効な構成情報だけを書く。
- 長期的な不変ルールは `RULES.md` へ寄せる。
- 抽象的な考え方は `AGENTS.md` に寄せる。
