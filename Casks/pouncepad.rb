cask "pouncepad" do
  version "0.1.0"
  sha256 "61d97056edff41c189d68c60d8db6d965d34735f2f9c39bf0e081c9210f792fc"

  url "https://github.com/pounceapps/downloads/releases/download/pouncepad-v#{version}/PouncePad-#{version}.dmg"
  name "PouncePad"
  desc "Simple, AI-drivable text editor with a Claude Code channel"
  homepage "https://pounceapps.com"

  auto_updates false
  depends_on macos: :ventura

  app "PouncePad.app"

  zap trash: [
    "~/Library/Application Support/PouncePad",
    "~/Library/Preferences/com.wails.PouncePad.plist",
  ]
end
