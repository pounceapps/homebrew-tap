cask "pouncepad" do
  version "0.1.1"
  sha256 "08c34c933dbccaf9f271c8e5d7e080446762691691d86ee70fd4a7ceb6c868d9"

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
