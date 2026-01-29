class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.1.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.1.111/depup-aarch64-apple-darwin.tar.gz"
      sha256 "7d7240faf4bdd518e146039a633dd17c542df96832d5aa9405a52ff23d97ce2d"
    else
      url "https://github.com/owayo/depup/releases/download/v26.1.111/depup-x86_64-apple-darwin.tar.gz"
      sha256 "5529e45bf63e0215b73cd7de6ca42b0c4935b9a24d163a4e7f5656f9ee9974fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.1.111/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7dc7aa672fc06f4ea437920966eb7ba4ab3fccaf9bf46cf6d3d31e8ed073a85"
    else
      url "https://github.com/owayo/depup/releases/download/v26.1.111/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8772d64fda80507110958c10c2bbff152fa9e29bff9aa6c8d847bccfc2650c3"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
