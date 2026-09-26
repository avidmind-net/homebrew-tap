cask "memyselfni@beta" do
  version "0.9.0-beta.22"
  sha256 "7851d30802e1e86cc12e6e2ae8dcc8283eb1658d4b36617624e25cc0eb0b1631"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.0-beta.22/memyselfni-macos.zip"
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
