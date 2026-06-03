class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.6.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "3bedc0806628d6ed32ff6dad02ea146a94c4e82e916a39fefa5706e048fca5b8"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "262574061d2fc0832c4cfd91af2f2f7b46aece2054cd6cf823e2d878e058f473"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b04d9a2b5cb39ea8d6a3b3c4b1385475e2637e4281f2cc1a3d58771f3acfa9e"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a579cc0a581ee7f793cb5e719e04b70c9a6bb695a11de258cdf322c0a5b4d9f"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
