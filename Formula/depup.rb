class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.5.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "659ceba5abfd87b9fa8e790cfcd9a3fb6b7d6ba1b963a1d7be47107a4ba54036"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "c43945d9aa7c15de106239031b2f59b670e2b52920d24ae308c9d1ca4d8fd7c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "095bc52b4bfc585cf1e5ef2d98a920252f5ee200bbd82d9456c91b1f1d822b41"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9049008db6ab69bae40e5e8c7ef10a9f14b6c03cf1817aee352b1e9bc7e973de"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
