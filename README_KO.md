<p align="center">
  <a href="README.md">简体中文</a> · <a href="README_EN.md">English</a> · <a href="README_JA.md">日本語</a> · <a href="README_KO.md">한국어</a> · <a href="README_ES.md">Español</a>
</p>

# 退出其他App（다른 App 종료）

`退出其他App.app` 을 더블클릭하면 다른 일반 포그라운드 App 에 정상 종료 요청을 보냅니다.

기본으로 유지되는 항목：

- 护眼宝（눈 보호 앱）
- WeChat
- WeChat Work
- 터미널
- Codex
- VS Code
- 亮度细调（밝기 미세 조정）
- Finder（반드시 유지해야 합니다 — 바탕화면 아이콘을 그리는 역할을 하므로, 종료하면 바탕화면의 파일이 사라집니다）
- 이 도구 자체

설명：

- 프로세스를 강제로 종료하지 않습니다.
- 저장하지 않은 내용이 있는 App 은 저장 확인 창을 띄울 수 있습니다.
- 유지 목록을 조정하려면 `src/QuitOtherApps.applescript` 의 `keptAppNames` 와 `keptBundleIDs` 를 편집한 뒤 다시 컴파일하세요.

# 亮度细调（밝기 미세 조정）

`亮度细调.app` 을 열면 하단 Dock 에 아이콘이 나타나고, 작은 제어 창이 팝업됩니다.

창에는 다음이 있습니다：

- 밝기 슬라이더
- `- 1%`
- `+ 1%`

공간이 충분하면 상단 메뉴 막대에도 `亮度 xx%`（밝기 xx%）가 표시되지만, Dock 아이콘과 창이 주요 진입점입니다.

버튼 단계는 `1%` 입니다. 내장 디스플레이의 밝기를 우선적으로 조정합니다.
