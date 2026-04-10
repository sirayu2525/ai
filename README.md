# ai

Claude Code と Codex で共有する AI scaffold。

## 構成

- `CLAUDE.md`: Claude Code 用の project memory。共有 reference を読み込み、Claude の基本方針として常に使う。
- `.agents/skills/project-shared/`: repo 内で共有する正本 Skill。Codex はここを読み、Claude Code は `CLAUDE.md` から同梱 reference を読む。
- `.agents/skills/browser-analysis/`: Chrome DevTools MCP を使ったサイト解析用 Skill。
- `.agents/skills/ux-performance-audit/`: Playwright MCP と Chrome DevTools MCP を使った performance / accessibility / UIUX 監査用 Skill。
- `.mcp.json`: Claude Code 用の project-scoped MCP 設定。現在は `chrome-devtools` と `playwright` を定義している。

## 使い方

### Claude Code

Claude Code は `CLAUDE.md` を自動で読み込み、そこで参照している shared reference を常時使う。

### Codex

このリポジトリ内で Codex を起動する。Codex は `.agents/skills/` から repo スコープの Skill を見つけるため、ホームディレクトリへのインストールは不要。

## 監査ツール

- 普段の監査は `Playwright MCP` と `Chrome DevTools MCP` を使う。
- 会話ベースで確認し、必要なら `.agents/skills/ux-performance-audit/` を呼ぶ。

## MCP

- Claude Code は `.mcp.json` から project-scoped MCP を読む。
- Codex の MCP は repo スコープではなく user/global 設定になるため、`chrome-devtools` と `playwright` は global に登録してある。

## この Scaffold の育て方

- 長く使う cross-tool のルールは `.agents/skills/project-shared/references/` に置く。
- `SKILL.md` は導線とワークフロー説明に集中させる。
- 再利用できる helper script は、繰り返しのセットアップやミスを減らせるときだけ `.agents/skills/project-shared/scripts/` に追加する。
