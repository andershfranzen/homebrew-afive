cask "andromeda" do
  version "0.1.5"
  sha256 "c28462e218c66c1dae5b15e499396c87302ff1256afbbbfa7ef82bc5d6f3110f"

  url "https://www.afive.dev/api/downloads/andromeda/homebrew/Andromeda-#{version}.zip"
  name "Andromeda"
  desc "Menu-bar controls for XREAL One Pro glasses"
  homepage "https://www.afive.dev/andromeda"

  livecheck do
    url "https://www.afive.dev/downloads/andromeda/latest.json"
    regex(/"version":\s*"([^"]+)"/i)
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Andromeda.app"

  uninstall quit: "dk.afive.andromeda"

  zap trash: [
    "~/Library/Application Support/Andromeda",
    "~/Library/Caches/dk.afive.andromeda",
    "~/Library/HTTPStorages/dk.afive.andromeda",
    "~/Library/Preferences/dk.afive.andromeda.plist",
  ]
end
