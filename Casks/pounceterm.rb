cask "pounceterm" do
  version "0.7.10"
  sha256 "5160e75b125bd218c04365ebd07e39e1884f4d875d50f65f118189dc623403d8"

  url "https://github.com/pounceapps/downloads/releases/download/pounceterm-v#{version}/PounceTERM-#{version}.dmg"
  name "PounceTERM"
  desc "Native macOS terminal manager (local + SSH) with an encrypted vault and Claude Code integration"
  homepage "https://pounceapps.com"

  auto_updates false
  depends_on macos: :ventura

  app "PounceTERM.app"

  zap trash: [
    "~/Library/Application Support/PounceTERM",
    "~/Library/Preferences/com.pounceapps.pounceterm.plist",
  ]
end
