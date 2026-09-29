cask "pouncesql" do
  version "0.3.120"
  sha256 "447d10f5c9b474a6602e5243fafe192c754854c8888a6fe3be14a3c41d656935"

  url "https://github.com/pounceapps/downloads/releases/download/pouncesql-v#{version}/PounceSQL-#{version}.dmg"
  name "PounceSQL"
  desc "Native macOS SQL client for Azure SQL, SQL Server, PostgreSQL & SQLite with AI + MCP"
  homepage "https://pouncesql.com"

  auto_updates false

  # Kept here, not hand-added to the tap: release.sh regenerates the cask from
  # this template on every release, so anything edited straight in the tap is
  # silently overwritten.
  livecheck do
    url "https://github.com/pounceapps/downloads/releases.atom"
    # brew livecheck rewrites this feed URL to the repo and uses the Git
    # strategy, so the regex is matched against TAG names. PounceSQL's history
    # is tagged bare (v0.3.118) while release.sh now tags pouncesql-v<ver>;
    # match either, anchored so the other apps' tags in this shared repo don't
    # get picked up.
    regex(/\A(?:pouncesql-)?v(\d+(?:\.\d+)+)\z/i)
  end

  depends_on macos: :ventura

  app "PounceSQL.app"

  zap trash: [
    "~/Library/Application Support/PounceSQL",
    "~/Library/Preferences/com.pounceapps.pouncesql.plist",
  ]
end
