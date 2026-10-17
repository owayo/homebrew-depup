class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.110/depup-aarch64-apple-darwin.tar.gz"
      sha256 "8630c57bd1dc412af6cdabb929d2c906937596a8a0ab56ef5a21a91a62be7721"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.110/depup-x86_64-apple-darwin.tar.gz"
      sha256 "2f1e92bbd0bab772e1fb2774ce7b21fbb79c6fae8c9c0ca6fd4910e2e95f0795"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.110/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e09c58aa9418bc2f6271aa8d796bb47c9f073c2225b2e818a2f0ca3608ad2e1"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.110/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bed67e11dd9d4568a24c0a1ee9dde89e79adc9054585e546cb387138b440134"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
