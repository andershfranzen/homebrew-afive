cask "andromeda" do
  version "0.1.8"
  sha256 "f16760d0e6d1d834abf826ad1a83f2f586e0c87c625248ddf8fbe602bf99d03c"

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
