cask "pier" do
  version "0.4.0"
  sha256 "e2aabb9e7f63a7f3724752ffb58ec558f71105e4e125660de3bb9853f27e8ca9"

  url "https://www.afive.dev/downloads/pier/Pier-#{version}.zip"
  name "Pier"
  desc "Menu-bar Docker fleet monitor over SSH"
  homepage "https://www.afive.dev/pier"

  livecheck do
    url "https://www.afive.dev/downloads/pier/latest.json"
    regex(/"version":\s*"([^"]+)"/i)
  end

  depends_on macos: ">= :sonoma"

  app "Pier.app"

  uninstall quit: "dk.afive.pier"

  zap trash: [
    "~/Library/Application Support/Pier",
    "~/Library/Application Support/DockGlance",
    "~/Library/Preferences/dk.afive.pier.plist",
  ]
end
