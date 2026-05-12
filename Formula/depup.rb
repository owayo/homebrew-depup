class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.5.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "3d4c309f5835797714044283f5d7d820b7154b9e95cf4c84ca74b11d2436c72c"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "85fbc4ed13d19a091ca2719cac995d5030aad121955aa1e43d39263d4bd5b5fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "750c36ae997a61d3c118817613105d7dfe11eed4cd03982bd3b8a0d8896a819e"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed806c9a9b90223d5f51ce0cdaed900a0a3aa68bf2a586b1574291947d958bd5"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
