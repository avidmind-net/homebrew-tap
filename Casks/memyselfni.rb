cask "memyselfni" do
  version "0.9.1"
  sha256 "51e965d971c0512401794afd09d57199f98e932942ecfd745ff9363689098cab"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.1/memyselfni-macos.zip"
  name "Me, Myself & I"
  desc "Personal productivity app for tasks, goals, and trackers"
  homepage "https://memyselfni.eu/"

  conflicts_with cask: "memyselfni@beta"
  depends_on macos: :monterey

  app "memyselfni.app"

  zap trash: [
    "~/Library/Application Support/net.avidmind.memyselfni",
    "~/Library/Preferences/net.avidmind.memyselfni.plist",
  ]
end
