class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.3.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.103/depup-aarch64-apple-darwin.tar.gz"
      sha256 "cdb118e27409e0207f514675b6cbc517274bc2994b6612a822f1470e1d5c9b97"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.103/depup-x86_64-apple-darwin.tar.gz"
      sha256 "0d4a398792ad0af40be66bac89e6a3f13e7a62c037d0f33d3b2d417534d95d2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.103/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a65a1386ef4352d5eed95d59e007972aa3f595ffd94f9927dfaf5952bbc4fb9f"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.103/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5399661387a0c22c947d0e3f380cbaf3b0248b8178b566e36d4318547c48e02"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
