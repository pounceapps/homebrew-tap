# PounceApps Homebrew Tap

Install the PounceApps for macOS with [Homebrew](https://brew.sh):

```sh
brew tap pounceapps/tap
brew install --cask pouncesql   # native SQL client (Azure SQL, SQL Server, Postgres, SQLite) + AI/MCP
brew install --cask pouncepad   # simple, AI-drivable text editor
```

Or in one line:

```sh
brew install --cask pounceapps/tap/pouncesql
```

Casks in `Casks/` are published automatically by each app's release pipeline;
the DMGs they download live in [pounceapps/downloads](https://github.com/pounceapps/downloads).

More at [pounceapps.com](https://pounceapps.com).
