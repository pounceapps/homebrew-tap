cask "pouncesql" do
  version "0.3.106"
  sha256 "36953b8e8af8327956cd20fe32b4181d5cfe7d8fd44ec41a0e21b49f291f1db9"

  url "https://github.com/pounceapps/downloads/releases/download/v#{version}/PounceSQL-#{version}.dmg"
  name "PounceSQL"
  desc "Native macOS SQL client for Azure SQL, SQL Server, PostgreSQL & SQLite with AI + MCP"
  homepage "https://pouncesql.com"

  auto_updates false
  depends_on macos: :ventura

  app "PounceSQL.app"

  zap trash: [
    "~/Library/Application Support/PounceSQL",
    "~/Library/Preferences/dev.senzall.pouncesql.plist",
  ]
end
