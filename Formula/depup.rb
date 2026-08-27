class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.8.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.8.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "9636ff46a39aed4494f778fa80c89d6dd6cbd0d213d67995fd58fbac86a8b808"
    else
      url "https://github.com/owayo/depup/releases/download/v26.8.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "d71afb84819d6d9c4a2efec821ef5c04020ea48e9e9be05a24efab7a3a594264"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.8.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a14562d394374365edca575a1662a6ff7953994cd587a06af6215486f97aa20c"
    else
      url "https://github.com/owayo/depup/releases/download/v26.8.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2d67e25fbc4b9373e01ddfd5d05ca8721cec1857eb36162a7fadb721420e6ae"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
