cask "codex-co2" do
  version "0.2.0,27"
  sha256 "1e04838c15e3ed063737b98ff832e0fb6987fc14f47cfa3c46e7cc9f78643b19"

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

    推出已挂载的旧版 Co² 安装盘，只从“应用程序”打开当前安装。
    Eject old Co² disk images and open the current app only from Applications.

    当前包优先复用已有服务，否则随管理应用以前台方式运行；退出 Co² 后暂停前台共享。
    恢复记录默认保留，重开后内网邀请可申请恢复，仍需分享者确认。
    This package reuses an existing service or runs with the management app.
    Quitting Co² pauses foreground sharing. Recovery records are retained by default;
    after reopening, intranet invitations can request recovery with host approval.

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
