class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.2.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "0a543e501ac530b6e1d22cec0aab62ffe96f5e6ce4b35ff50ab56f1fa93f9322"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "f90a91e88866b0f1054d87dbf8008e71bc5f61f2cf78d2097e737907e25be0c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e6ebba7453b0d1a2b9678f73f4834bc00a0d8ffee3713a13b92f347cf91b407"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d11811f88884c9fcf39c0096272cde53355baa4fe927561965245d3094cffc1"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
