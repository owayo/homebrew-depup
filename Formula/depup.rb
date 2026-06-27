class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.6.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.104/depup-aarch64-apple-darwin.tar.gz"
      sha256 "91f14464aa18f2ad1e21c0938af82fa8dfb2d37b1102e5ba6a15171f4e1ca06b"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.104/depup-x86_64-apple-darwin.tar.gz"
      sha256 "cdcedc87cfa5dc9e187593d77b1d983a668355c592655582b3fb917d8a8921e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.104/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4dde046ce6f7d9acb43cf4e7c55919d514fb823db2e23493ef8ba07e841d19bd"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.104/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "727023825c2e49c3bbb133db46ba6af7ef8f85d5d30f5b32c3f767e2d67b5810"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
