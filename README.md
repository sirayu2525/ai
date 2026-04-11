# ai

Claude Code と Codex で共有する AI scaffold。

## この README について

- この README は、人間がこの repo の構成と使い方を把握するための入口。
- AI に対する repo-wide の前提やルールの正本は `README.md` ではなく `AGENTS.md` / `RULES.md` / `WORKING-CONTEXT.md` に置く。
- `skills` は再利用できる基本能力、`pipelines` は人間が頼みやすいユースケースの入口として使う。

## まずどう依頼するか

- 通常は、やりたいことをそのまま依頼すればよい。
- AI は依頼内容から近い pipeline を選び、必要な基本 skill を内部で使い分ける。
- 手法を固定したいときだけ pipeline 名を指定する。
- さらに細かく制御したいときだけ skill 名を指定する。
- 指示内容と pipeline / skill の既定フローがズレる場合、AI はその差分を明示したうえで進める。

例:

- 普通の依頼:
  - 「このサイトを調査して改善点をまとめて」
  - 「この差分をレビューして」
  - 「ポートフォリオページを作って」
- pipeline を明示する依頼:
  - 「browser-analysis pipeline でこの不具合を見て」
  - 「ux-performance-audit pipeline で監査して」
- skill を明示する依頼:
  - 「research と review を使って見て」
  - 「web-flow-inspection と browser-debugging を使って調べて」

## 基本 skill と pipeline

- `basic skill` は、AI 用の再利用しやすい基本能力。
- `pipeline` は、よく使う依頼を人間が頼みやすい単位にまとめた入口。
- 通常は pipeline が人間向けの入口で、skill は AI 内部の構成要素として扱う。
- 人間は必要に応じて pipeline や skill を明示できるが、毎回指定する前提ではない。

## よく使う pipelines

- `implementation`
  - 変更を作り、必要な確認まで進める。
- `code-review`
  - 既存差分や既存ファイルの問題点を見る。
- `browser-analysis`
  - Web サイトや Web アプリの不具合原因をブラウザ上で調べる。
- `ux-performance-audit`
  - UI/UX、performance、accessibility をまとめて監査する。

`browser-analysis` は特定の症状の原因を深掘る pipeline、`ux-performance-audit` は画面や導線全体を見て改善点を洗い出す pipeline。

## 基本 skills

- `research`
  - 対象を調べ、事実と仮説を分けて整理する。
- `creation`
  - コード、文書、コンテンツなどの成果物を作る。
- `verification`
  - 変更内容や仮説を検証する。
- `review`
  - 既存の成果物や差分をレビューする。
- `browser-debugging`
  - Chrome DevTools MCP で原因調査を行う。
- `web-flow-inspection`
  - Playwright MCP で画面体験や操作フローを確認する。

## AI がたどる流れ

1. まずセッション側の system / developer instructions を読む。
2. repo の入口として `CLAUDE.md` を読む。
3. `CLAUDE.md` から `AGENTS.md` / `RULES.md` / `WORKING-CONTEXT.md` を参照し、repo-wide の前提、rules、current truth を揃える。
4. ユーザーの依頼をユースケースとして捉え、近い pipeline があるかを見る。
5. pipeline があれば、その pipeline が使う basic skill を読む。
6. pipeline が合わなければ、basic skill を直接組み合わせる。

## 構成

- `AGENTS.md`: repo-wide の前提、考え方、workflow surface policy を置く共通ファイル。
- `RULES.md`: stable な rules を置く共通ファイル。
- `WORKING-CONTEXT.md`: current truth と現在有効な構成情報を置く共通ファイル。
- `CLAUDE.md`: Claude Code 用の project memory。root docs を読み込む薄い入口にしている。
- `.agents/skills/`: 再利用できる基本 skill 群。
- `.agents/pipelines/`: よく使う依頼をまとめた入口。
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
- 基本 skill は小さく再利用しやすい単位に保つ。
- pipeline はよく使う依頼をまとめるが、root docs のルールを複製しない。
- `SKILL.md` と `PIPELINE.md` は導線とワークフロー説明に集中させる。
- 反復して参照する情報は、対応する skill または pipeline 配下に整理して置く。
