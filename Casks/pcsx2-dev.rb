cask "pcsx2-dev" do
  version "1.7-Dev-2022-03-25"
  sha256 "4c9a2f1db73fe6a3e4b18b6dadb909d2fcf363914b0ce352419d007e9b1a61ce"

  url "https://github.com/tellowkrinkle/pcsx2/releases/download/macos-20220325/PCSX2-1.7.0-dev-20220325-Mac-64Bit.tar.gz",
      verified: "https://github.com/tellowkrinkle/pcsx2/releases"
  name "PCSX2"
  desc "Playstation 2 Emulator"
  homepage "hhttps://pcsx2.net"

  livecheck do
    regex(%r{gh-release/(.*)}i)
  end

  app "PCSX2.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
  ]
end
