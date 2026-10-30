class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.119/depup-aarch64-apple-darwin.tar.gz"
      sha256 "b5ecd9f7747f2c662b0edcee2d6fd3fed6c1ca06a51e970a79da59987ff455ec"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.119/depup-x86_64-apple-darwin.tar.gz"
      sha256 "11c037ef410f24e46b0e05d2cd055aace551f5035926f1de740859b9a69ad498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.119/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29409702824b77746271f85de38100439e54b85272fd20357fff342a4e75d13b"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.119/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96e023eddff049f17a9f195633e19048466279ab0c0e9590b5e2e2907345a949"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
