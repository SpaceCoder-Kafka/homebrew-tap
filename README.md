# Codex Co² Homebrew Tap

Real-time collaboration for Codex. 共享一条 Codex 会话，一起推进工作。

This tap distributes the experimental macOS preview of [Codex Co²](https://github.com/SpaceCoder-Kafka/codex-co2).

## Install

Requires an Apple Silicon Mac running macOS 15 or later and an already running, compatible official Codex Desktop.

```sh
brew tap SpaceCoder-Kafka/tap
brew install --cask SpaceCoder-Kafka/tap/codex-co2
```

If your Homebrew version asks you to trust the cask, inspect its definition and then explicitly trust this cask before retrying installation:

```sh
brew trust --cask SpaceCoder-Kafka/tap/codex-co2
```

The preview is **ad-hoc signed and not notarized by Apple**. If macOS blocks its first launch, attempt to open Codex Co² from Applications, then go to **System Settings → Privacy & Security → Open Anyway** and confirm. Only approve an app whose source you trust. See [Apple's guidance](https://support.apple.com/en-us/102445).

Homebrew installs the application directly; it does not show the DMG's installation window. After installation, this third-party tap opens a local first-launch guide in your default browser. No drag-and-drop step is needed. The guide links to Privacy & Security; approval and authentication remain manual. The cask also prints these instructions.

If the guide does not open automatically, or you installed before it was added, run:

```sh
brew update
open "$(brew --repository SpaceCoder-Kafka/tap)/guides/homebrew.html"
```

Automatic opening requires a graphical macOS session and Homebrew's legacy third-party `postflight` compatibility. Failure to open the browser does not fail installation. New structured flight steps cannot launch GUI applications; if legacy support is removed, use the explicit `open` command above.

## Update

Stop sharing and quit Codex Co² from its menu bar menu before upgrading.

```sh
brew update
brew upgrade --cask SpaceCoder-Kafka/tap/codex-co2
```

## Uninstall

Stop sharing and quit Codex Co² first. This removes the application and retains user data.

```sh
brew uninstall --cask SpaceCoder-Kafka/tap/codex-co2
```

## Preview scope

The host uses official Codex Desktop; guests join a selected conversation in their browsers. Native tool approvals remain with the host. Guest messages use that conversation's existing execution context. Public relay infrastructure uses ordinary TLS trust, without E2EE; host disconnection pauses collaboration.

Release assets include a DMG checksum and source inventory. A checksum detects changed bytes; it does not establish publisher identity. Automated checks do not establish clean-Mac installation or native Desktop approval acceptance. See the project's release notes for remaining acceptance gaps.
