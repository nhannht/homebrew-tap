cask "maquette" do
  version "0.1.0"
  sha256 "9deccffa4378e212b70cf6c9fffd5b3a832ff89d4f1a81c68d11aece8f95d3fc"

  url "https://github.com/nhannht/maquette/releases/download/v#{version}/Maquette-#{version}.dmg"
  name "Maquette"
  desc "Drop a photo, get a sculpted 3D model - BYOK LLM sculpt loop"
  homepage "https://github.com/nhannht/maquette"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Maquette.app"

  zap trash: [
    "~/Library/Application Support/Maquette",
    "~/Library/Caches/com.nhannht.maquette.app",
    "~/Library/HTTPStorages/com.nhannht.maquette.app",
    "~/Library/Preferences/com.nhannht.maquette.app.plist",
    "~/Library/Saved Application State/com.nhannht.maquette.app.savedState",
  ]
end
