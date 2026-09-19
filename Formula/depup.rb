class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.9.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.9.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "ceae35563a449ce5aa6f7ba330abcec77503e35365f46ed7a246de6c23a595ea"
    else
      url "https://github.com/owayo/depup/releases/download/v26.9.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "0a3e93ca1b932b7a5132da6933edb279075a48865d4bb74a523bea08e277c8f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.9.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8299ac810c88e7b4ec2b78a3fe85104ccca68470be3872a1fde2983185f4b4d9"
    else
      url "https://github.com/owayo/depup/releases/download/v26.9.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69a6eb312b3d9cb86451d80b7b6a2d6dbd9fa31c442ffd2faed92e93605df42f"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
