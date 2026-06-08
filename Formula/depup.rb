class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.6.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "5c29d18704425207c72d6b226f93f5ec9de1e66d08562fd936d81e70e916afb9"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "841fb3c36261b55e57dc7a0df5e51b3e2e19920ef7d203c35f69bdf09d118b36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6cf33376c0b3f2835e14065b7e2ce2338714eeb6dcb6d2bf186136e7125eb50"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57671ba961ed349b0fd2c0c9a611ec285ff92c24a3678959208bfe6b33caa220"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
