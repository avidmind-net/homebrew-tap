cask "memyselfni@beta" do
  version "0.9.0-beta.16"
  sha256 "50d1d2d65c5367945cb8277b2190b71084b45c12a82a605c975d00acb6b48fbb"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.0-beta.16/memyselfni-macos.zip"
  name "Me, Myself & I (Beta)"
  desc "Personal productivity app for tasks, goals, and trackers"
  homepage "https://me-myself-i.com/"

  conflicts_with cask: "memyselfni"
  depends_on macos: [:>=, :monterey]

  app "memyselfni.app"

  zap trash: [
    "~/Library/Application Support/net.avidmind.memyselfni",
    "~/Library/Preferences/net.avidmind.memyselfni.plist",
  ]
end
