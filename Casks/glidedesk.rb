cask "glidedesk" do
  version "3.2.0"
  sha256 "a84f1b29f925304b7c56c8965e6f32ed6068c3fa5f476d946b7d0228f9d65d5b"

  url "https://github.com/glidedesk/GlideDesk/releases/download/v#{version}/GlideDesk_#{version}_universal.dmg"
  name "GlideDesk"
  desc "Lightweight, zero-latency multi-device KVM & seamless workspace bridge"
  homepage "https://github.com/glidedesk/GlideDesk"

  auto_updates true
  depends_on macos: :ventura

  app "GlideDesk.app"

  uninstall quit: "com.glidedesk.desktop"

  zap trash: [
    "~/Library/Application Support/com.glidedesk.desktop",
    "~/Library/Preferences/com.glidedesk.desktop.plist",
    "~/Library/Saved Application State/com.glidedesk.desktop.savedState",
  ]
end
