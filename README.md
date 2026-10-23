# Codex Co² Homebrew Tap

Real-time collaboration for Codex. 共享一条 Codex 会话，一起推进工作。

This tap distributes the experimental macOS preview of [Codex Co²](https://github.com/SpaceCoder-Kafka/codex-co2).

## Install

Requires an Apple Silicon Mac running macOS 15 or later and an already running, compatible official Codex Desktop.

```sh
brew tap SpaceCoder-Kafka/tap
brew install --cask SpaceCoder-Kafka/tap/codex-co2 && open "$(brew --repository SpaceCoder-Kafka/tap)/guides/homebrew.html"
```

If your Homebrew version asks you to trust the cask, inspect its definition and then explicitly trust this cask before retrying installation:

```sh
brew trust --cask SpaceCoder-Kafka/tap/codex-co2
```

The preview is **ad-hoc signed and not notarized by Apple**. If macOS blocks its first launch, attempt to open Codex Co² from Applications, then go to **System Settings → Privacy & Security → Open Anyway** and confirm. Only approve an app whose source you trust. See [Apple's guidance](https://support.apple.com/en-us/102445).

Homebrew installs the application directly; it does not show the DMG's installation window. The command above opens a local first-launch guide in your default browser after successful installation. The guide includes Chinese and English, with language buttons at the top; it follows your browser language initially and remembers your selection when local storage is available. No drag-and-drop step is needed. The guide links to Privacy & Security; approval and authentication remain manual. The cask also prints the guide command.

If you already installed the app or used only the `brew install` portion, open the guide without reinstalling:

```sh
brew update
open "$(brew --repository SpaceCoder-Kafka/tap)/guides/homebrew.html"
```

Opening the guide requires a graphical macOS session. The cask does not use deprecated installation hooks. The `&&` opens the guide only if installation succeeds; browser launch failure does not undo an installed app.

## Update

While running, Build 17 and later check for updates at most once a day in the background and offer **About → Check for updates** for manual checks. Download and installation start when you click the update button. If sharing is active, Co² asks you to end sharing before it installs and restarts. Keep official Codex Desktop running.

Build 16 and earlier need one manual upgrade through Homebrew or a DMG before in-app updates are available. For a manual upgrade, stop sharing and quit Codex Co² from its menu bar menu first:

```sh
brew update
brew upgrade --cask --greedy SpaceCoder-Kafka/tap/codex-co2
```

`--greedy` includes this cask even though it is marked as self-updating. The command names only Codex Co²; it does not request upgrades for other casks. See the [Homebrew upgrade options](https://docs.brew.sh/Manpage#upgrade-options-installed_formulainstalled_cask-).

Build 17 起可在「关于 → 检查更新」中更新，应用运行时每天最多在后台检查一次，下载和安装由你主动触发。Build 16 及以前需先手动升级一次；手动升级前停止共享并退出 Co²，官方 Codex Desktop 保持运行。

## Uninstall

Stop sharing and quit Codex Co² first. This removes the application and retains user data.

```sh
brew uninstall --cask SpaceCoder-Kafka/tap/codex-co2
```

## Preview scope

The host uses official Codex Desktop; guests join a selected conversation in their browsers. Native tool approvals remain with the host. Guest messages use that conversation's existing execution context. Public relay infrastructure uses ordinary TLS trust, without E2EE; host disconnection pauses collaboration.

Release assets include a DMG checksum and source inventory. A checksum detects changed bytes; it does not establish publisher identity. Automated checks do not establish clean-Mac installation or native Desktop approval acceptance. See the project's release notes for remaining acceptance gaps.
