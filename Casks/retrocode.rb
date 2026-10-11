cask "retrocode" do
  version "1.4.3"
  sha256 "992635ce0c2c781fb475de5a75995e0c8226ba65e14014acf00cc538139435b7"

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
