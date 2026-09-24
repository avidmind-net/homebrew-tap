cask "memyselfni@beta" do
  version "0.9.0-beta.17"
  sha256 "fe58a4af1788696fe17872c3863966c5de101a7b0994ecb44c7db93b38d181f2"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.0-beta.17/memyselfni-macos.zip"
  name "Me, Myself & I (Beta)"
  desc "Personal productivity app for tasks, goals, and trackers"
  homepage "https://me-myself-i.com/"

  conflicts_with cask: "memyselfni"
  depends_on macos: :monterey

  app "memyselfni.app"

  zap trash: [
    "~/Library/Application Support/net.avidmind.memyselfni",
    "~/Library/Preferences/net.avidmind.memyselfni.plist",
  ]
end
