cask "pounceterm" do
  version "0.7.16"
  sha256 "6760457312ac37795ad8d73d9a8b0abe4f3244e58b744575c3af76228f214452"

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
