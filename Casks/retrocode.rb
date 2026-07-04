cask "retrocode" do
  version "1.4.2"
  sha256 "62c3e62f34fd98adf15a453d961ac597e5dbf5bc84772e36a025bfc225cd574e"

  url "https://github.com/pounceapps/downloads/releases/download/retrocode-v#{version}/RetroCode-#{version}.dmg"
  name "RetroCode"
  desc "Retro desktop IDE — 8-bit Assembly & TRS-80 BASIC with a modern editor and AI"
  homepage "https://pounceapps.com/retrocode"

  auto_updates false
  depends_on macos: :monterey

  app "RetroCode.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.retrocode",
    "~/Library/Preferences/com.pounceapps.retrocode.plist",
    "~/Library/Saved Application State/com.pounceapps.retrocode.savedState",
  ]
end
