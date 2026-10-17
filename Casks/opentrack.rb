cask "opentrack" do
  version "4.0.0"
  sha256 "b4f03d7af933e4b3ed0c732a9e774eac7eeb913f44b499be08c42a1ab6d559ce"

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
