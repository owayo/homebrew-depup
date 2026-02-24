class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.2.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.107/depup-aarch64-apple-darwin.tar.gz"
      sha256 "8c751ccc73f449341683eb0732585bc7c348bb4e6271e56529454492b0531ed1"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.107/depup-x86_64-apple-darwin.tar.gz"
      sha256 "397e7f124e3a7332fb4427056a7d1487d0c2c784f424479a2e4d5e087d6da34e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.107/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "030a135f468af62c53a5138746cf961f19c7befba3600f81229f8e6dfacac568"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.107/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f9f908e8ab4d3de5593d47e4916544394b4bbde1e135ae7aec8c3b45f704a44"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
