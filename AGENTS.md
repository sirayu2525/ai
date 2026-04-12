# AI Scaffold Instructions

このリポジトリは、Claude Code と Codex で共有する AI scaffold。

repo-wide の前提、考え方、判断基準はこのファイルと `RULES.md` / `WORKING-CONTEXT.md` / `CONVENTIONS.md` に置く。  
`.agents/skills/` は再利用できる基本能力、`.agents/pipelines/` はよく使う依頼の組み合わせとして扱う。repo 全体の思想や current truth は root docs で持つ。

## Core Principles

1. まず「相談 / 調査 / 比較検討 / 設計 / 実装 / レビュー」のどれが求められているかを切り分ける。
2. 実装が求められていないなら、無理にコード変更へ進めない。
3. repo 固有の前提や運用ルールは shared docs を正本にし、skill には task-specific な workflow だけを置く。
4. 既存案に引きずられず、必要なら抽象化や前提の見直しを行う。
5. 前提、トレードオフ、残るリスクを明示する。
6. ユーザーの依頼内容と、選ばれた skill や pipeline の既定フローがズレる場合は、その差分と扱い方を出力で明示する。

## Workflow Surface Policy

- repo-wide の前提と current truth:
  - `AGENTS.md`
  - `RULES.md`
  - `WORKING-CONTEXT.md`
  - `CONVENTIONS.md`
- basic skills:
  - `.agents/skills/research/`
  - `.agents/skills/creation/`
  - `.agents/skills/verification/`
  - `.agents/skills/review/`
  - `.agents/skills/browser-debugging/`
  - `.agents/skills/web-flow-inspection/`
- common pipelines:
  - `.agents/pipelines/implementation/`
  - `.agents/pipelines/code-review/`
  - `.agents/pipelines/browser-analysis/`
  - `.agents/pipelines/ux-performance-audit/`

## Routing Policy

- まず、ユーザーが何をしたいかをユースケース単位で捉える。
- 近い pipeline があるなら、それを入口にする。
- pipeline は内部で必要な basic skill を読む。
- pipeline の進め方は固定シーケンスではなく、必要に応じて basic skill を往復してよい。
- pipeline が合わないか、依頼が特殊なら basic skill を直接組み合わせる。
- 通常、ユーザーは goal を伝えればよく、skill 名や pipeline 名を必ずしも指定しなくてよい。
- 手法を固定したい場合だけ、pipeline 名や skill 名を明示する。
- ユーザーの指示と skill / pipeline の既定フローが一致しない場合は、どこが違うかと、どちらを優先するかを明示する。

repo-wide の前提確認のためだけに dedicated skill は使わない。  
その役割は root docs 側で持つ。
