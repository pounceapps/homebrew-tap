cask "morselhub" do
  version "1.2.2"
  sha256 "2ea0f043809c70e675c17dd7420137e7e3c114dd05c0dfbd35eff02d5399a380"

  url "https://github.com/pounceapps/downloads/releases/download/morselhub-v#{version}/MorselHub-#{version}.dmg"
  name "MorselHub"
  desc "AI message hub — connects iMessage, RetroCode & webhooks to Claude"
  homepage "https://pounceapps.com/morselhub"

  auto_updates false
  depends_on macos: :monterey

  app "MorselHub.app"

  zap trash: [
    "~/Library/Application Support/com.pounceapps.morselhub",
    "~/Library/Preferences/com.pounceapps.morselhub.plist",
    "~/Library/Saved Application State/com.pounceapps.morselhub.savedState",
  ]
end
