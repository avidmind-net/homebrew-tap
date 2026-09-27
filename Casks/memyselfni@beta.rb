cask "memyselfni@beta" do
  version "0.9.0-beta.24"
  sha256 "00babe4665a70d40d209b4d6cdbbe237dd51180cfc9912cd71154f7c23936396"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.0-beta.24/memyselfni-macos.zip"
  name "Me, Myself & I (Beta)"
  desc "Personal productivity app for tasks, goals, and trackers"
  homepage "https://memyselfni.eu/"

  conflicts_with cask: "memyselfni"
  depends_on macos: :monterey

  app "memyselfni.app"

  zap trash: [
    "~/Library/Application Support/net.avidmind.memyselfni",
    "~/Library/Preferences/net.avidmind.memyselfni.plist",
  ]
end
