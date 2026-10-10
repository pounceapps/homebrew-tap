cask "pouncecode" do
  version "0.8.6"
  sha256 "24311e6fb215d79e64d07a857f272e5d82bae7092eb4ee73c8b1b4351abb72cb"

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
