cask "pouncepad" do
  version "0.3.8"
  sha256 "2df63e85e2325cce78309710821224f9c34388508e3ca6157bcc8223886eb6bf"

  url "https://github.com/pounceapps/downloads/releases/download/pouncepad-v#{version}/PouncePad-#{version}.dmg"
  name "PouncePad"
  desc "Simple, AI-drivable text editor & file viewer with a Claude Code channel"
  homepage "https://pounceapps.com"

  auto_updates false

  # Kept here, not hand-added to the tap: release.sh regenerates the cask from
  # this template on every release, so anything edited straight in the tap is
  # silently overwritten.
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
