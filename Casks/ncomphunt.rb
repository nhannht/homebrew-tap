cask "ncomphunt" do
  version "0.3.0"
  sha256 "cb8bea9bd25a5260cb452af535d8b266ad50ddaca97782147b80ff1c26a13f4a"

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
    "~/Library/Application Support/CompHunt",
    "~/Library/Caches/com.nhannht.ncomphunt",
    "~/Library/Group Containers/V3P5U9Z68M.group.com.nhannht.ncomphunt",
    "~/Library/HTTPStorages/com.nhannht.ncomphunt",
    "~/Library/Preferences/com.nhannht.ncomphunt.plist",
    "~/Library/Saved Application State/com.nhannht.ncomphunt.savedState",
  ]
end
