cask "glidedesk" do
  version "3.2.0"
  sha256 "b73617056d17325b878a369bcbce9ca3dcca4902163842eec9b27e13845f099d"

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
