cask "ncomphunt" do
  version "0.1.0"
  sha256 "8e69fe825a0f521c7d63803ab9d27456cf143afe3906955ede55cf580b3c80e2"

  url "https://github.com/nhannht/ncomphunt/releases/download/v#{version}/ncomphunt-#{version}.dmg",
      verified: "github.com/nhannht/ncomphunt/"
  name "nCompHunt"
  desc "Indexer for competitions, CTFs, hackathons, and design contests"
  homepage "https://github.com/nhannht/ncomphunt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "nCompHunt.app"

  zap trash: [
    "~/Library/Application Support/nCompHunt",
    "~/Library/Caches/com.nhannht.ncomphunt",
    "~/Library/HTTPStorages/com.nhannht.ncomphunt",
    "~/Library/Preferences/com.nhannht.ncomphunt.plist",
    "~/Library/Saved Application State/com.nhannht.ncomphunt.savedState",
  ]
end
