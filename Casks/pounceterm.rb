cask "pounceterm" do
  version "0.9.0"
  sha256 "9ec570b37a0f4c429cafb30f13035e6254e2b61bc50521294ab695094660d278"

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
