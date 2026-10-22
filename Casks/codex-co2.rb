cask "codex-co2" do
  version "0.3.3,12"
  sha256 "51c87421f9b65be7dea97b5bd346327313837d5acfe8f640f87333c538810398"

  url "https://github.com/SpaceCoder-Kafka/codex-co2/releases/download/v#{version.csv.first}-preview.#{version.csv.second}/Codex-Co2-#{version.csv.first}-build#{version.csv.second}-arm64-preview.dmg"
  name "Codex Co²"
  desc "Real-time collaboration for Codex"
  homepage "https://github.com/SpaceCoder-Kafka/codex-co2"

  livecheck do
    skip "Preview versions are updated manually"
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Codex Co².app"

  caveats <<~EOS
    安装已完成，无需拖拽。打开首次使用引导：
      open "$(brew --repository SpaceCoder-Kafka/tap)/guides/homebrew.html"

    This experimental preview is ad-hoc signed and not notarized by Apple.
    Requires macOS 15 or later on Apple Silicon and an already running,
    compatible official Codex Desktop.

    If macOS blocks the first launch:
    1. Attempt to open Codex Co² from Applications.
    2. Open System Settings > Privacy & Security.
    3. Find Codex Co², choose Open Anyway, and confirm.
    Only allow the app if you trust its source.

    Before upgrading, stop sharing and quit Codex Co² from its menu bar menu.
  EOS
end
