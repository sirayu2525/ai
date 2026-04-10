# 監査フロー

## 監査の順番

1. Playwright MCP でユーザー操作をなぞり、体験上の違和感を確認する。
2. Chrome DevTools MCP で根拠となる console、network、performance、DOM 情報を取る。
3. 問題を分類して優先順位を付ける。
4. 原因が不明な箇所だけ `browser-analysis` で掘る。

## 何を見るか

### Performance

- network waterfall
- 長い task や rendering cost
- 画面が見えるまでの体感
- 不要な request
- 画像、JavaScript、CSS の重さ
- render blocking
- 初回表示と操作開始までの遅さ

### Accessibility

- 見出し構造
- フォーカス移動
- contrast
- ラベルとフォーム
- キーボード操作のしやすさ

### UI/UX

- 情報の優先順位が分かるか
- CTA が明確か
- 迷う導線や余計な手順がないか
- レスポンシブで破綻しないか
- エラー時や読み込み時の状態が分かりやすいか

## 優先順位の付け方

- まずはユーザー影響が大きい問題を優先する。
- 次に修正コストが低く効果が大きいものを優先する。
- スコア改善だけでなく、実際の体験改善につながるかで判断する。

## 結果の返し方

- 番号をつけて返してください。
- 問題を列挙するだけで終わらない。
- Playwright MCP と Chrome DevTools MCP のどの観測結果を根拠にしたかを示す。
- 重要度順に並べる。
- 修正案は、再発防止や保守性も含めて考える。
