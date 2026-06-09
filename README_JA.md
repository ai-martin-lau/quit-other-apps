<p align="center">
  <a href="README.md">简体中文</a> · <a href="README_EN.md">English</a> · <a href="README_JA.md">日本語</a> · <a href="README_KO.md">한국어</a> · <a href="README_ES.md">Español</a>
</p>

# 退出其他App（他のAppを終了）

`退出其他App.app` をダブルクリックすると、他の通常のフォアグラウンド App に正常な終了リクエストを送ります。

デフォルトで残すもの：

- 护眼宝（目の保護アプリ）
- WeChat
- WeChat Work
- ターミナル
- Codex
- VS Code
- 亮度细调（明るさ微調整）
- Finder（必ず残してください——デスクトップのアイコンを描画しており、終了するとデスクトップ上のファイルが消えてしまいます）
- このツール自身

説明：

- プロセスを強制終了することはありません。
- 未保存の内容がある App は、保存の確認ダイアログを表示することがあります。
- 残すリストを変更したい場合は、`src/QuitOtherApps.applescript` 内の `keptAppNames` と `keptBundleIDs` を編集してから再コンパイルしてください。

# 亮度细调（明るさ微調整）

`亮度细调.app` を開くと、画面下部の Dock にアイコンが表示され、小さなコントロールウィンドウがポップアップします。

ウィンドウには次のものがあります：

- 明るさスライダー
- `- 1%`
- `+ 1%`

スペースに余裕があれば、上部のメニューバーにも `亮度 xx%`（明るさ xx%）が表示されますが、Dock アイコンとウィンドウがメインの入口です。

ボタンのステップは `1%` です。優先して内蔵ディスプレイの明るさを調整します。

## スター推移

[![スター推移グラフ](https://api.star-history.com/svg?repos=ai-martin-lau/quit-other-apps&type=Date)](https://star-history.com/#ai-martin-lau/quit-other-apps&Date)
