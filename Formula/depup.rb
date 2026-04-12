class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.4.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.4.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "345af87043f40e40bc5b568c15a26ec1a3bbd779b41437e2f12c3c6b19e4641b"
    else
      url "https://github.com/owayo/depup/releases/download/v26.4.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "98139a64823389c660088ca2cc362b6b66431b27c91578fabf6a343fc804cb1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.4.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48a07eb38e93ea41a31b1a74700e9c7e15f816e9bbf1f6a73183e9e06b1e7bcc"
    else
      url "https://github.com/owayo/depup/releases/download/v26.4.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20edac532e65dbf0b30b39c6a4e129f61ba4535f3bf2f72750f144adddf41591"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
