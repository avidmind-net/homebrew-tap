cask "memyselfni@beta" do
  version "0.9.2-beta.1"
  sha256 "2bba60343a497d9a51a165fb86938b147848d165f5cf2fe8e2c4c46e06fe2383"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.2-beta.1/memyselfni-macos.zip"
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
