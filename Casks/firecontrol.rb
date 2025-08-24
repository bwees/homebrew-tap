cask "firecontrol" do
  arch arm: "arm64", intel: "x86_64"

  version "21.1.5"
  sha256 :no_check

  url "https://assets.langmuirsystems.com/firecontrol/latest/FireControl-#{version}.pkg"
  name "FireControl"
  desc "Control software for Langmuir plasma cutters"
  homepage "https://www.langmuirsystems.com/downloads"

  pkg "FireControl-#{version}.pkg"

  uninstall pkgutil: "com.langmuir.cnc.desktop.pkg"

end