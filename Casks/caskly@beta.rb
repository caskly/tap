cask "caskly@beta" do
  version "1.0.0.BETA,1013"
  sha256 "89b65d30a3533441389f692ce01faee52191f8717a85abcaeac2a8d4a16fce0f"

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
