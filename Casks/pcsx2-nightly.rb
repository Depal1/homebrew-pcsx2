cask "pcsx2-nightly" do
  version "1.7.2676"
  sha256 "0351bd49af1ec8907441d2a664f952177c55071432cf29a352926200ee390222"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macOS.tar.gz",
      verified: "https://github.com/PCSX2/pcsx2/releases"
  name "PCSX2"
  desc "Playstation 2 Emulator"
  homepage "https://pcsx2.net"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "PCSX2.app"

  zap rmdir: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
    "~/Library/Application Support/PCSX2",
  ]
end
