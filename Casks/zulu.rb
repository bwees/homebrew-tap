cask "zulu" do
  # renovate: tag=zulu-v1.23.6
  version "1.23.6"
  sha256 "63d524bd5765c26b16ccfa76d3806f6bb4517a90d7251f18ea84ffdf6bfb71e1"

  url "https://github.com/slop-place/zulu/releases/download/zulu-v#{version}/Zulu.dmg"
  name "Zulu"
  desc "Native Zulip client"
  homepage "https://github.com/slop-place/zulu"

  livecheck do
    url :url
    regex(/^zulu-v(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Zulu.app"

  zap trash: [
    "~/Library/Application Scripts/com.bwees.zulu",
    "~/Library/Containers/com.bwees.zulu",
  ]
end
