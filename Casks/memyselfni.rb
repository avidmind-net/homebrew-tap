cask "memyselfni" do
  version "0.9.2"
  sha256 "5dd14334e0ddf6b226f85822af0e47fc30a373e9a0ba630459ad67221aa572a5"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.2/memyselfni-macos.zip"
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
