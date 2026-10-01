cask "pouncecode" do
  version "0.6.5"
  sha256 "b1fe7c8f29e0d0b63cd36e17fd7dbcb7b3638d27dc03de2990ff19e5dddf14c7"

  url "https://github.com/pounceapps/downloads/releases/download/pouncecode-v#{version}/PounceCode-#{version}.dmg"
  name "PounceCode"
  desc "Agentic coding and AI harness — bring your own model, keep your tools"
  homepage "https://pounceapps.com"

  auto_updates false

  # Kept here, not hand-added to the tap: release.sh regenerates the cask from
  # this template on every release, so anything edited straight in the tap is
  # silently overwritten.
  livecheck do
    url "https://github.com/pounceapps/downloads/releases.atom"
    regex(/pouncecode-v(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :ventura

  app "PounceCode Desktop.app"

  # The CLI ships inside the bundle so one artifact covers both halves of
  # the product; brew links it onto the PATH as `pounce`.
  binary "#{appdir}/PounceCode Desktop.app/Contents/MacOS/pounce"

  zap trash: [
    "~/.pouncecode",
    "~/Library/Application Support/PounceCode",
    "~/Library/Preferences/com.pounceapps.pouncecode.plist",
  ]
end
