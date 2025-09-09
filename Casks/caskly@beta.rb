cask "caskly@beta" do
  version "1.0.0.BETA,1079"
  sha256 "0cc1047675573a9b4cb0450ff12d9e0bb2a63fc1d0826e7982d085e29661f6e7"

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
