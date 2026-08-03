cask "pouncepad" do
  version "0.3.2"
  sha256 "0270547895b80574fd0723527954014c99af1a785ff5d842cb1d68b763dd80dd"

  url "https://github.com/pounceapps/downloads/releases/download/pouncepad-v#{version}/PouncePad-#{version}.dmg"
  name "PouncePad"
  desc "Simple, AI-drivable text editor & file viewer with a Claude Code channel"
  homepage "https://pounceapps.com"

  auto_updates false
  depends_on macos: :ventura

  app "PouncePad.app"

  zap trash: [
    "~/Library/Application Support/PouncePad",
    "~/Library/Preferences/com.pounceapps.pouncepad.plist",
    # Orphan from the pre-0.2 bundle id (com.wails.PouncePad) — cleaned on zap.
    "~/Library/Preferences/com.wails.PouncePad.plist",
  ]
end
