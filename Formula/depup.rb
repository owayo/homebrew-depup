class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.5.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.103/depup-aarch64-apple-darwin.tar.gz"
      sha256 "dbb227172dee49cff0820f3bbc0b35d32c4f03ac8c5a39b2aa0d69bb77c11e46"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.103/depup-x86_64-apple-darwin.tar.gz"
      sha256 "36656bac9acf54dd1fcb9c9b63dbaade69f3f0768ac81aba6a4629848b4245c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.103/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "041a6f1a731175a255409d49c85a3452f03fe293a7e4e81df70d7845139ae1d0"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.103/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84fee25c6404c45692d21535b82289e0bb88838587920ae207ef012348abaa6b"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
