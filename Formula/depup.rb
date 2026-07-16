class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.7.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.7.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "d447ef56836edbb6d6b7db436bd5c4f5711d0af81b57d68d781b07336b702db7"
    else
      url "https://github.com/owayo/depup/releases/download/v26.7.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "24be922b29985a38e624cb7ba763db967d97fe9c32c778c159529ccebe42dcba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.7.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dc4d179153459bd8410771dbba0dbc35e96b6fe35a92f5a823553ec24388a84"
    else
      url "https://github.com/owayo/depup/releases/download/v26.7.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a611c791654e05a3a23b6620fbe2d0b50250b34e8e9358c6fdd083e966506b3"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
