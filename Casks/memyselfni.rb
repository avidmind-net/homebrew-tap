cask "memyselfni" do
  version "0.9.0"
  sha256 "e60f9d027730ea8daa95ca0e1ba4784357c204932e6d37721f89f4d4303e6cb0"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.0/memyselfni-macos.zip"
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
