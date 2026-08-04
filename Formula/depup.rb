class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.8.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.8.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "1d3e1b2709bbb99093f026dddfdbd41a0c82e5d9565c1d6491b34beda0244268"
    else
      url "https://github.com/owayo/depup/releases/download/v26.8.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "686137b21b674e99390f40630c616b42f08b32f8947daaabac43946d03e997d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.8.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8aece4fa207e9d3ebc2af181cd00e0676cb7bcbfd7d1a6e080621c63dd1697c"
    else
      url "https://github.com/owayo/depup/releases/download/v26.8.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92eaf8b449b6e8134ac2ac254e8740ac98baad32a85b9063f1486140a33ab877"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
