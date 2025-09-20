cask "caskly@beta" do
  version "1.0.0.BETA,1234"
  sha256 "1ace7097098d4c5ce4e579469e257752bcd72140752785c45056df5b3fce14eb"

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
