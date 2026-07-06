cask "pouncesql" do
  version "0.3.110"
  sha256 "c88c3a84aff52f2d53092dcd1a02d6db7bedb7b249c92f6c410861f36a7bf798"

  url "https://github.com/pounceapps/downloads/releases/download/v#{version}/PounceSQL-#{version}.dmg"
  name "PounceSQL"
  desc "Native macOS SQL client for Azure SQL, SQL Server, PostgreSQL & SQLite with AI + MCP"
  homepage "https://pouncesql.com"

  auto_updates false
  depends_on macos: :ventura

  app "PounceSQL.app"

  zap trash: [
    "~/Library/Application Support/PounceSQL",
    "~/Library/Preferences/com.pounceapps.pouncesql.plist",
  ]
end
