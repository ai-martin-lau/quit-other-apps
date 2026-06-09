<p align="center">
  <a href="README.md">简体中文</a> · <a href="README_EN.md">English</a> · <a href="README_JA.md">日本語</a> · <a href="README_KO.md">한국어</a> · <a href="README_ES.md">Español</a>
</p>

# 退出其他App (Salir de otras apps)

Haz doble clic en `退出其他App.app` y enviará una solicitud de cierre normal a las demás apps que estén en primer plano.

Se conservan por defecto:

- 护眼宝 (Protector de la vista)
- WeChat
- WeChat Work
- Terminal
- Codex
- VS Code
- 亮度细调 (Ajuste fino del brillo)
- Finder (debe conservarse: es el que dibuja los iconos del escritorio, y si se cierra los archivos del escritorio desaparecen)
- Esta misma herramienta

Notas:

- No fuerza el cierre de los procesos.
- Si una app tiene contenido sin guardar, esa app puede mostrar una confirmación de guardado.
- Para ajustar la lista de apps conservadas, edita `keptAppNames` y `keptBundleIDs` en `src/QuitOtherApps.applescript` y vuelve a compilar.

# 亮度细调 (Ajuste fino del brillo)

Al abrir `亮度细调.app`, aparece un icono en el Dock inferior y se abre una pequeña ventana de control.

La ventana contiene:

- Un control deslizante de brillo
- `- 1%`
- `+ 1%`

Si hay espacio suficiente, la barra de menús superior también muestra `亮度 xx%` (Brillo xx%), pero el icono del Dock y la ventana son los puntos de acceso principales.

El paso del botón es `1%`. Da prioridad al ajuste del brillo de la pantalla integrada.
