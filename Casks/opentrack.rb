cask "opentrack" do
  version "4.1.0"
  sha256 "d21228e044bfe8b89e52ac3fd2430d2d675824c463ef8b8182a52193fe152532"

  url "https://github.com/bircni/aitrack/releases/download/v#{version}/opentrack_#{version}_aarch64.dmg"
  name "opentrack"
  desc "Menu bar dashboard for Claude Code, Codex and Cursor limits and spend"
  homepage "https://github.com/bircni/aitrack/blob/main/docs/opentrack.md"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "opentrack.app"

  # Ad hoc signed and not notarized, so Gatekeeper would refuse the quarantined copy.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/opentrack.app"]
  end

  zap trash: [
    "~/Library/Application Support/dev.bircni.opentrack",
    "~/Library/Caches/dev.bircni.opentrack",
    "~/Library/WebKit/dev.bircni.opentrack",
  ]
end
