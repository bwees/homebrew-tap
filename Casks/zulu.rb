cask "zulu" do
  # renovate: tag=zulu-v1.23.4
  version "1.23.4"
  sha256 "45c67c1a436c9001c927201a7295f7925ab87f19e5d8833a170a1af3135d7f66"

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
