<p align="center">
  <a href="README.md">简体中文</a> · <a href="README_EN.md">English</a> · <a href="README_JA.md">日本語</a> · <a href="README_KO.md">한국어</a> · <a href="README_ES.md">Español</a>
</p>

# 退出其他App

双击 `退出其他App.app` 后，它会向其他普通前台 App 发送正常退出请求。

默认保留：

- 护眼宝
- 微信
- 企业微信
- 终端
- Codex
- VS Code
- 亮度细调
- 访达（Finder，必须保留——它负责绘制桌面图标，退出会导致桌面文件消失）
- 这个工具本身

说明：

- 它不会强制结束进程。
- 如果某个 App 有未保存内容，那个 App 可能会弹出保存确认。
- 如果需要调整保留名单，编辑 `src/QuitOtherApps.applescript` 里的 `keptAppNames` 和 `keptBundleIDs` 后重新编译。

# 亮度细调

打开 `亮度细调.app` 后，底部 Dock 会出现图标，并弹出一个小控制窗口。

窗口里有：

- 亮度滑杆
- `- 1%`
- `+ 1%`

顶部菜单栏如果空间足够，也会显示 `亮度 xx%`，但 Dock 图标和窗口是主要入口。

按钮步进是 `1%`。它会优先调内置屏幕亮度。

## Star 趋势

[![Star 趋势图](https://api.star-history.com/svg?repos=ai-martin-lau/quit-other-apps&type=Date)](https://star-history.com/#ai-martin-lau/quit-other-apps&Date)
