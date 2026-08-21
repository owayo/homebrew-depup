class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.8.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.8.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "a644108c2c9e71336655496168582ae3ec56c2f1df9fae033efc176ab0c2f585"
    else
      url "https://github.com/owayo/depup/releases/download/v26.8.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "5d0c25bca83991a66f204a93b64d916c8809078995f4b3e910b7ae43435e3e22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.8.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3182773fd233d8810ac0db9f6b2f5fe82547b4aef2454043d4b2912a766c30ac"
    else
      url "https://github.com/owayo/depup/releases/download/v26.8.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bfb5472e70b480100ee29dfbfb995943479b9d00a8837c7d815a999534ec047"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
