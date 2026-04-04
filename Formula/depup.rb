class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.4.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.4.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "af7e2b72cf2bf0a6c6e3d90cda3c764b49c719394be681ebb09d689456f7459a"
    else
      url "https://github.com/owayo/depup/releases/download/v26.4.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "3c4833601ed07d9ef076d3b9d3e9baf08af284430ef662ccea7a11fb49a42ccb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.4.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45e7faf6184b28008856d1ac3767b378565dee178cf68d34b364d618d0e6cc88"
    else
      url "https://github.com/owayo/depup/releases/download/v26.4.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9353cfc7cfa9edbbbeaa6ef316c04b9765a1cefb7ec05f9e5f9873e60be3256"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
