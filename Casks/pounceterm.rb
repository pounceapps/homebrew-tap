cask "pounceterm" do
  version "0.7.13"
  sha256 "937e6b657bfb95f8b3f5acf61ff9ae50e86f40753bc488a3e4d4ba8471cdc408"

  url "https://github.com/pounceapps/downloads/releases/download/pounceterm-v#{version}/PounceTERM-#{version}.dmg"
  name "PounceTERM"
  desc "Native macOS terminal manager (local + SSH) with an encrypted vault and Claude Code integration"
  homepage "https://pounceapps.com"

  auto_updates false

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
