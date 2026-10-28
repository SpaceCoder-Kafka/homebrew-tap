# Codex Co² Homebrew Tap

Real-time collaboration for Codex. 共享一条 Codex 会话，一起推进工作。

This tap distributes the experimental macOS application of [Codex Co²](https://github.com/SpaceCoder-Kafka/codex-co2).

## Install

Requires an Apple Silicon or Intel Mac running macOS 14 or later and an already running, compatible official Codex Desktop.

```sh
brew tap SpaceCoder-Kafka/tap
brew install --cask SpaceCoder-Kafka/tap/codex-co2 && open "$(brew --repository SpaceCoder-Kafka/tap)/guides/homebrew.html"
```

If your Homebrew version asks you to trust the cask, inspect its definition and then explicitly trust this cask before retrying installation:

```sh
brew trust --cask SpaceCoder-Kafka/tap/codex-co2
```

The package is **ad-hoc signed and not notarized by Apple**. If macOS blocks its first launch, attempt to open Codex Co² from Applications, then go to **System Settings → Privacy & Security → Open Anyway** and confirm. Only approve an app whose source you trust. See [Apple's guidance](https://support.apple.com/en-us/102445).

Homebrew installs the application directly; it does not show the DMG's installation window. The command above opens a local first-launch guide in your default browser after successful installation. The guide includes Chinese and English, with language buttons at the top; it follows your browser language initially and remembers your selection when local storage is available. No drag-and-drop step is needed. The guide links to Privacy & Security; approval and authentication remain manual. The cask also prints the guide command.

Eject any old Co² disk images, then open the current app from **Applications**. Avoid launching old copies from an installation disk or backup. 推出已挂载的旧版 Co² 安装盘，然后从「应用程序」打开当前安装；不要从旧安装盘或备份副本启动。

If you already installed the app or used only the `brew install` portion, open the guide without reinstalling:

```sh
brew update
open "$(brew --repository SpaceCoder-Kafka/tap)/guides/homebrew.html"
```

Opening the guide requires a graphical macOS session. The cask does not use deprecated installation hooks. The `&&` opens the guide only if installation succeeds; browser launch failure does not undo an installed app.

## Update

While running, Build 17 and later check for updates at most once a day in the background and offer **About → Check for updates** for manual checks. Download and installation start when you click the update button. If sharing is active, Co² asks you to end sharing before it installs and restarts. Keep official Codex Desktop running.

0.1.0 preserves the historical 0.3.3 Preview Build 17 feature baseline. 0.2.0 contains the subsequent local functionality, including Universal macOS packages, Windows downloads, invitation recovery and the macOS background sharing service.

Historical Build 17 and later can migrate through the in-app updater because internal Build numbers continue increasing. For the one-time manual Homebrew migration from 0.3.3, stop sharing, turn off background running if enabled, then quit Co²; keep official Codex Desktop running:

```sh
brew update
brew reinstall --cask SpaceCoder-Kafka/tap/codex-co2
```

For subsequent regular updates, use the in-app updater or `brew upgrade --cask --greedy SpaceCoder-Kafka/tap/codex-co2`. `--greedy` includes this cask even though it is marked as self-updating. See the [Homebrew upgrade options](https://docs.brew.sh/Manpage#upgrade-options-installed_formulainstalled_cask-).

0.1.0 以原 0.3.3 Preview Build 17 为功能基线，0.2.0 包含后续本地改进。原 Build 17 及之后可使用「关于 → 检查更新」。旧 0.3.3 用户本次通过 Homebrew 手动迁移时，使用上述重新安装命令；先停止共享、关闭后台运行并退出 Co²，保持官方 Codex Desktop 运行。后续版本恢复普通升级。

## Uninstall

Stop sharing and quit Codex Co² first. This removes the application and retains user data.

```sh
brew uninstall --cask SpaceCoder-Kafka/tap/codex-co2
```

## Sharing and acceptance

The host uses official Codex Desktop; guests join a selected conversation in their browsers. Native tool approvals remain with the host. Guest messages use that conversation's existing execution context. Public relay infrastructure uses ordinary TLS trust, without E2EE; explicit intranet sharing uses unencrypted HTTP. Host disconnection pauses collaboration.

Release assets include a DMG checksum and source inventory. A checksum detects changed bytes; it does not establish publisher identity. Automated checks do not establish clean-Mac installation or native Desktop approval acceptance. See the project's release notes for remaining acceptance gaps.
