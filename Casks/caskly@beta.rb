cask "caskly@beta" do
  version "1.0.0.BETA,1105"
  sha256 "3b2366799066dbb82848038dfaad9705f9f5d55c10d7afed5ac851e230a5591e"

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
