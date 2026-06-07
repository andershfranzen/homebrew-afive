cask "andromeda" do
  version "0.1.6"
  sha256 "23538c1462fa087f5215e9bb4e0ce01e545a7cb4c0aac12dc1e1914491386b69"

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
