cask "pouncepad" do
  version "0.3.5"
  sha256 "9616525af7b0bfd142ddd916cc90fa0b872e50b2848433730a2e049636558c09"

  url "https://github.com/pounceapps/downloads/releases/download/pouncepad-v#{version}/PouncePad-#{version}.dmg"
  name "PouncePad"
  desc "Simple, AI-drivable text editor & file viewer with a Claude Code channel"
  homepage "https://pounceapps.com"

  auto_updates false

  livecheck do
    url "https://github.com/pounceapps/downloads/releases.atom"
    regex(/pouncepad-v(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :ventura

  app "PouncePad.app"

  zap trash: [
    "~/Library/Application Support/PouncePad",
    "~/Library/Preferences/com.pounceapps.pouncepad.plist",
    # Orphan from the pre-0.2 bundle id (com.wails.PouncePad) — cleaned on zap.
    "~/Library/Preferences/com.wails.PouncePad.plist",
  ]
end
