class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.6.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.103/depup-aarch64-apple-darwin.tar.gz"
      sha256 "fbea45c07bae47ef3ca4e13ea91cdf4eb832439c9a5264d6d51809c2b44222d7"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.103/depup-x86_64-apple-darwin.tar.gz"
      sha256 "e45437c5a671ee08fbeedbfb8ffaab28ed48f232996e77258a7f4a5fa3bc7e9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.103/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "baa9e4418e266c16b6af08a3d729a870025090bf0c398731160f12e2767b7e60"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.103/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00044f0b3fadb9dc1452097f984266f49a5618a139034e1a295655c1a98bd9e5"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
