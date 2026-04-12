# Rules

## Must Always

- 提案や編集に入る前に、依頼と関係するファイルを読む。
- まず今回の依頼が相談、調査、設計、実装、レビューのどれかを切り分ける。
- repo-wide の前提やルールを変えるときは、skill より先に `AGENTS.md` / `RULES.md` / `WORKING-CONTEXT.md` / `CONVENTIONS.md` を更新する。
- skills は task-specific かつ reusable な workflow に絞る。
- 前提、トレードオフ、残るリスクを明示する。
- ユーザーの依頼内容と、適用した skill / pipeline の既定フローにズレがある場合は、その差分を出力で明示する。

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
  - implementation / writing conventions
- basic skills:
  - 再利用できる基本能力
  - 単一責務寄りの workflow
  - task-specific references
- pipelines:
  - よく使う依頼の組み合わせ
  - basic skills をまとめる入口
  - 人間が頼みやすい粒度

## Current Skill Policy

- `skills` は小さめで再利用しやすい基本能力として保つ。
- `pipelines` はよく使うユースケースをまとめる。
- 通常は pipeline を入口にし、必要なら basic skill を直接組み合わせる。
- 既定フローよりユーザーの指示を優先する場合も、何を変えたかは明示する。
- repo 全体の抽象的な考え方は root docs に集約する。
