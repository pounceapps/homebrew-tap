cask "pounceterm" do
  version "0.8.1"
  sha256 "460608002f082f174f6542f5a96c4237ded7513043d94bc95da08dd6456b1896"

  url "https://github.com/pounceapps/downloads/releases/download/pounceterm-v#{version}/PounceTERM-#{version}.dmg"
  name "PounceTERM"
  desc "Native macOS terminal manager (local + SSH) with an encrypted vault and Claude Code integration"
  homepage "https://pounceapps.com"

  auto_updates false

  # Kept here, not hand-added to the tap: release.sh regenerates the cask from
  # this template on every release, so anything edited straight in the tap is
  # silently overwritten (that is what happened to this block once already).
  livecheck do
    url "https://github.com/pounceapps/downloads/releases.atom"
    regex(/pounceterm-v(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :ventura

  app "PounceTERM.app"

  zap trash: [
    "~/Library/Application Support/PounceTERM",
    "~/Library/Preferences/com.pounceapps.pounceterm.plist",
  ]
end
