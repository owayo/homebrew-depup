class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.2.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.104/depup-aarch64-apple-darwin.tar.gz"
      sha256 "b2e5eb35e803ec21044225afed8447de093c5126e1488363bae6f8b5a10f43f8"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.104/depup-x86_64-apple-darwin.tar.gz"
      sha256 "65497b9a4e66d87ae08b3e7233f9a3e600c37edf12e6a224c633475f47a6779f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.104/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f9047e943eccb1dbed344a5a9ec69b507178e3a3f56cc4f366fa11a9eb0dc75"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.104/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2648e367ce1bb15e0fdb939ad997ae03693539a02e91bc843d3b82c2d434f0e0"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
