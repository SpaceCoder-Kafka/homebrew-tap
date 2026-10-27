cask "codex-co2" do
  version "0.2.0,24"
  sha256 "0b30f927ba004801b368aa7c4406750e815383c7a9df831a7245631060c67929"

  url "https://github.com/SpaceCoder-Kafka/codex-co2/releases/download/v#{version.csv.first}/Codex-Co2-#{version.csv.first}-build#{version.csv.second}-universal.dmg"
  name "Codex Co²"
  desc "Real-time collaboration for Codex"
  homepage "https://github.com/SpaceCoder-Kafka/codex-co2"

  livecheck do
    skip "Regular releases are selected manually for this tap"
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Codex Co².app"

  caveats <<~EOS
    安装已完成，无需拖拽。打开首次使用引导：
      open "$(brew --repository SpaceCoder-Kafka/tap)/guides/homebrew.html"

    This experimental package is ad-hoc signed and not notarized by Apple.
    Requires macOS 14 or later on Apple Silicon or Intel and an already running,
    compatible official Codex Desktop.

    If macOS blocks the first launch:
    1. Attempt to open Codex Co² from Applications.
    2. Open System Settings > Privacy & Security.
    3. Find Codex Co², choose Open Anyway, and confirm.
    Only allow the app if you trust its source.

    Build 17 起可在「关于 → 检查更新」中更新，运行时每天最多检查一次。
    Build 17 and later support About > Check for updates, with daily checks while running.
    Older builds need one manual upgrade before in-app updates are available.
    For one-time manual migration from 0.3.3, run brew update, then:
      brew reinstall --cask SpaceCoder-Kafka/tap/codex-co2
    手动迁移前先停止共享、关闭后台运行并退出 Co²。
    Before manual migration, stop sharing, disable background running and quit Co².
  EOS
end
