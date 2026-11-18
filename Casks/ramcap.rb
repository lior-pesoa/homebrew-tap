cask "ramcap" do
  version "0.1.0"
  sha256 "df8b99357d91fa3f84e9b9d4a3a3d86c16677f2f093f328c90081f1b13b8c486"

  url "https://github.com/lior-pesoa/ramcap/releases/download/v#{version}/RAMcap-#{version}.zip"
  name "RAMcap"
  desc "Menu bar app that sets a memory limit for Chrome"
  homepage "https://github.com/lior-pesoa/ramcap"

  depends_on macos: ">= :sonoma"

  app "RAMcap.app"

  uninstall quit: "app.ramcap.RAMcap"

  zap trash: "~/Library/Preferences/app.ramcap.RAMcap.plist"
end
