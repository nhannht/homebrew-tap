cask "ncomphunt" do
  version "0.2.0"
  sha256 "3e335088a73c7cd52cf18c2a4cf336611d3de90519ae7fd62a76ecb239f76faa"

  url "https://github.com/nhannht/ncomphunt/releases/download/v#{version}/ncomphunt-#{version}.dmg"
  name "nCompHunt"
  desc "Indexer for competitions, CTFs, hackathons, and design contests"
  homepage "https://github.com/nhannht/ncomphunt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "nCompHunt.app"

  zap trash: [
    "~/Library/Application Support/nCompHunt",
    "~/Library/Caches/com.nhannht.ncomphunt",
    "~/Library/HTTPStorages/com.nhannht.ncomphunt",
    "~/Library/Preferences/com.nhannht.ncomphunt.plist",
    "~/Library/Saved Application State/com.nhannht.ncomphunt.savedState",
  ]
end
