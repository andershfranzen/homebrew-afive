cask "andromeda" do
  version "0.1.7"
  sha256 "9f85ef8b884c7316716ce58d12d0b54fea56ea905e7b5b1b1101c944760b484d"

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
