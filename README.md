# ai

Claude Code と Codex で共有する AI scaffold。

## この README について

- この README は、人間がこの repo の構成と使い方を把握するための入口。
- AI に対する repo-wide の前提やルールの正本は `README.md` ではなく `AGENTS.md` / `RULES.md` / `WORKING-CONTEXT.md` に置く。
- `skills` は repo 全体の思想を置く場所ではなく、特定用途の workflow を切り出すための仕組みとして使う。

## AI がたどる流れ

1. まずセッション側の system / developer instructions を読む。
2. repo の入口として `CLAUDE.md` を読む。
3. `CLAUDE.md` から `AGENTS.md` / `RULES.md` / `WORKING-CONTEXT.md` を参照し、repo-wide の前提、rules、current truth を揃える。
4. 依頼が `相談 / 調査 / 比較検討 / 設計 / 実装 / レビュー` のどれかを切り分ける。
5. 必要なときだけ対応する `Skill` を開く。
6. `Skill` 内の `references/` や `scripts/` は、その依頼に必要なものだけ追加で読む。

この README は AI の主経路ではなく、構成を人間が理解しやすくするための補助ドキュメントとして扱う。

## Skills とは

- `Skill` は、AI 用の task-specific な workflow surface。
- 役割は「特定の仕事をどう進めるか」をまとめることであり、repo-wide の前提や抽象的な思想を抱え込まない。
- 各 Skill は `SKILL.md` を入口にし、必要に応じて `references/` や `scripts/` を持つ。
- 人間は Skill 自体を編集して育てたり、依頼の中で Skill 名を明示して AI に使わせたりする。

## 人間から見た主なユースケース

- repo-wide の前提や AI の判断基準を整えたいときは `AGENTS.md` / `RULES.md` / `WORKING-CONTEXT.md` を編集する。
- 相談や設計整理を AI と進めたいときは、root docs と関連ファイルを前提に会話する。
- repo 内でコード変更、検証、レビューを AI に依頼したいときは `.agents/skills/project-delivery/` を使うように指示する。
- Web サイトや Web アプリの不具合調査を AI に依頼したいときは `.agents/skills/browser-analysis/` を使うように指示する。
- performance / accessibility / UIUX の監査を AI に依頼したいときは `.agents/skills/ux-performance-audit/` を使うように指示する。

## 構成

- `AGENTS.md`: repo-wide の前提、考え方、workflow surface policy を置く共通ファイル。
- `RULES.md`: stable な rules を置く共通ファイル。
- `WORKING-CONTEXT.md`: current truth と直近の構成判断を置く共通ファイル。
- `CLAUDE.md`: Claude Code 用の project memory。root docs を読み込む薄い入口にしている。
- `.agents/skills/project-delivery/`: repo 内で共有する実装・検証・レビュー用 Skill。コード変更や code review が必要なときに使う。
- `.agents/skills/browser-analysis/`: Chrome DevTools MCP を使ったサイト解析用 Skill。
- `.agents/skills/ux-performance-audit/`: Playwright MCP と Chrome DevTools MCP を使った performance / accessibility / UIUX 監査用 Skill。
- `.mcp.json`: Claude Code 用の project-scoped MCP 設定。現在は `chrome-devtools` と `playwright` を定義している。

## 使い方

### Claude Code

Claude Code は `CLAUDE.md` を自動で読み込み、そこから `AGENTS.md` / `RULES.md` / `WORKING-CONTEXT.md` を参照する。

### Codex

このリポジトリ内で Codex を起動する。Codex は root docs と `.agents/skills/` を併用する前提で、この repo の workflow surface を読む。ホームディレクトリへのインストールは不要。

## MCP

- Claude Code は `.mcp.json` から project-scoped MCP を読む。
- Codex の MCP は repo スコープではなく user/global 設定になるため、`chrome-devtools` と `playwright` は global に登録してある。

## この Scaffold の育て方

- repo-wide の前提、rules、current truth は root docs に置く。
- 実装やレビューの実務フローは `.agents/skills/project-delivery/` に置く。
- `SKILL.md` は導線とワークフロー説明に集中させる。
- 再利用できる helper script は、繰り返しのセットアップやミスを減らせるときだけ対応する skill 配下か root `scripts/` に追加する。
