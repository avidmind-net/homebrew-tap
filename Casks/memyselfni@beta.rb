cask "memyselfni@beta" do
  version "0.9.0-beta.20"
  sha256 "128d9db4eb8cd64d71f7df51e8fd8ec5d01e751e6130102a74fca933350aa6b9"

  url "https://tap.avidmind.net/memyselfni/releases/v0.9.0-beta.20/memyselfni-macos.zip"
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
