cask "caskly@beta" do
  version "1.0.0.BETA,1208"
  sha256 "8dfef3d9b56b370c6afbaab6c7058882cd904629b1a1791bcf6aebc7ecfc0cbd"

  url "https://caskly.app/download/Caskly.zip"
  name "Caskly"
  desc "Homebrew cask management and app update tool"
  homepage "https://caskly.app"

  livecheck do
    url "https://caskly.app/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Caskly.app"

  zap trash: [
    "~/Library/Application Support/Caskly",
    "~/Library/Caches/app.caskly.Caskly",
    "~/Library/Preferences/app.caskly.Caskly.plist",
    "~/Library/Saved Application State/app.caskly.Caskly.savedState"
  ]
end
