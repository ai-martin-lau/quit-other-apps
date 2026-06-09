<p align="center">
  <a href="README.md">简体中文</a> · <a href="README_EN.md">English</a> · <a href="README_JA.md">日本語</a> · <a href="README_KO.md">한국어</a> · <a href="README_ES.md">Español</a>
</p>

# 退出其他App (Quit Other Apps)

Double-click `退出其他App.app` and it sends a normal quit request to the other regular foreground apps.

Kept by default:

- 护眼宝 (Eye Protector)
- WeChat
- WeChat Work
- Terminal
- Codex
- VS Code
- 亮度细调 (Brightness Fine-Tune)
- Finder (must be kept — it draws the desktop icons, and quitting it makes the files on your desktop disappear)
- This tool itself

Notes:

- It does not force-kill processes.
- If an app has unsaved content, that app may prompt you to confirm saving.
- To adjust the keep list, edit `keptAppNames` and `keptBundleIDs` in `src/QuitOtherApps.applescript`, then recompile.

# 亮度细调 (Brightness Fine-Tune)

Open `亮度细调.app` and an icon appears in the Dock at the bottom, along with a small control window.

The window contains:

- A brightness slider
- `- 1%`
- `+ 1%`

If there is enough room, the menu bar at the top also shows `亮度 xx%` (Brightness xx%), but the Dock icon and the window are the main entry points.

The button step is `1%`. It adjusts the built-in display's brightness first.

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=ai-martin-lau/quit-other-apps&type=Date)](https://star-history.com/#ai-martin-lau/quit-other-apps&Date)
