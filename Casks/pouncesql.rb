cask "pouncesql" do
  version "0.3.116"
  sha256 "3f0d513a2935cd71d8787bffbf300c6a26de5fae3b4c1782ba70217ae6f7af7d"

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
