cask "zulu" do
  # renovate: tag=zulu-v1.23.5
  version "1.23.5"
  sha256 "99d31c73839af8469ba8bd8e09c5e801e23bd2f7cccec424d03152b755123498"

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
