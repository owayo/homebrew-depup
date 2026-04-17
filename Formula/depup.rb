class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.4.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.4.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "67c55fa219b27604a0fe8d0e58983225fea48fe809a9ed8d20a514a9ed339974"
    else
      url "https://github.com/owayo/depup/releases/download/v26.4.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "9df0a840b1f029235223862595cf7e90441de4f2162d6c942b53e8754cba5e77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.4.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ad1fe5f46227d9a13f1bc6c84946fe5c31eb63c1df922422b5b29c2c5ab7dd9"
    else
      url "https://github.com/owayo/depup/releases/download/v26.4.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d7a1da2b6ad9f6b30de9ee4905cb2ab98cd970a65c3e695986e5cd1377b6b10"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
