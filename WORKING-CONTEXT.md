# Working Context

Last updated: 2026-04-12

## Purpose

Claude Code と Codex で共有する AI scaffold。  
repo-wide の前提と current truth は root docs に置き、basic skills と pipelines を分けて保つ。

## Current Truth

- repo-wide context の正本:
  - `AGENTS.md`
  - `RULES.md`
  - `WORKING-CONTEXT.md`
- Claude Code project memory:
  - `CLAUDE.md`
- active basic skills:
  - `.agents/skills/research/`
  - `.agents/skills/creation/`
  - `.agents/skills/verification/`
  - `.agents/skills/review/`
  - `.agents/skills/browser-debugging/`
  - `.agents/skills/web-flow-inspection/`
- active pipelines:
  - `.agents/pipelines/implementation/`
  - `.agents/pipelines/code-review/`
  - `.agents/pipelines/browser-analysis/`
  - `.agents/pipelines/ux-performance-audit/`

## Update Rule

- このファイルには current truth と現在有効な構成情報だけを書く。
- 長期的な不変ルールは `RULES.md` へ寄せる。
- 抽象的な考え方は `AGENTS.md` に寄せる。
