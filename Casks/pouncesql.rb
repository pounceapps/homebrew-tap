cask "pouncesql" do
  version "0.3.117"
  sha256 "c868c927e6dab0d98a8e199406d9a4997082d5e845d8b941c2dab228e6521a38"

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
