class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.2.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.103/depup-aarch64-apple-darwin.tar.gz"
      sha256 "85febf2c1b73fef8525ba26e7448bfe7688d8c6d38aca782e27ac5723b4cfdcb"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.103/depup-x86_64-apple-darwin.tar.gz"
      sha256 "a4bffc28a3b28e07450f0a80a7e23d0caac4007abba17d62e48131d62f2a28df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.103/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "385960c0a3f242fb34f1d89b143fd6f53cc7df9c6d7936945e283c05888e2a83"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.103/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83d61ae8907f52c3f6ca0661dd5e1e9ee193a5023697b61fa66b839bddad4a6d"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
