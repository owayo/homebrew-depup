class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.2.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "713e110866336d5ce8e497eee8df4bbdd3d54b6cf4eee5e3272494aa1de7fae6"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "226b3bf3e9b81581c904675ee2a36763bae002680c100dd6834596a6977aa918"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e79dcf4d26273ac2ddcf223116dffa424fa615b539c9f5868f084f90c0af2181"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbfabff756913fb021d7a6447291393ac15883c62073e4c2fe2b68f0e45e877c"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
