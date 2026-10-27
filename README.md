# 城墙之战 iOS

`xcode/` 是 Unity 导出的 Xcode 工程（Windows 上 Unity 菜单 城墙之战 → Build iOS）。推送到 main 后 GitHub Actions 在 macOS 上签名、打包并上传 TestFlight。

Secrets（仓库 Settings → Secrets and variables → Actions）：`ASC_KEY_ID`、`ASC_ISSUER_ID`、`ASC_KEY_P8`（.p8 文件 base64）、`MATCH_PASSWORD`。
