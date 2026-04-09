# ai

Claude Code と Codex で共有する AI scaffold。

## 構成

- `CLAUDE.md`: Claude Code 用の project memory。共有 reference を読み込み、Claude の基本方針として常に使う。
- `.agents/skills/project-shared/`: repo 内で共有する正本 Skill。Codex はここを読み、Claude Code は `CLAUDE.md` から同梱 reference を読む。

## 使い方

### Claude Code

Claude Code は `CLAUDE.md` を自動で読み込み、そこで参照している shared reference を常時使う。

### Codex

このリポジトリ内で Codex を起動する。Codex は `.agents/skills/` から repo スコープの Skill を見つけるため、ホームディレクトリへのインストールは不要。

## この Scaffold の育て方

- 長く使う cross-tool のルールは `.agents/skills/project-shared/references/` に置く。
- `SKILL.md` は導線とワークフロー説明に集中させる。
- 再利用できる helper script は、繰り返しのセットアップやミスを減らせるときだけ `.agents/skills/project-shared/scripts/` に追加する。
