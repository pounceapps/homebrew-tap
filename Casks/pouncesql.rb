cask "pouncesql" do
  version "0.3.102"
  sha256 "68d5129ce313d8d2aac59e6860a8aaddd2add75e131973679a2ae4e014d94b28"

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
