cask "zulu" do
  # renovate: tag=zulu-v1.22.1
  version "1.22.1"
  sha256 "ae2fa5fd7a7b4a8bf90a172437d1aa541306557fdcc5b6f15bab418ead26170d"

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
