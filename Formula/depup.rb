class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.1.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.1.110/depup-aarch64-apple-darwin.tar.gz"
      sha256 "0e4e3a935347e2fe79380d2c37a544505bd339359ce23b1546807015fc9fd66f"
    else
      url "https://github.com/owayo/depup/releases/download/v26.1.110/depup-x86_64-apple-darwin.tar.gz"
      sha256 "27bc2222ac752bbc54a986f582d0e51b6d8502a2ed0dab53ac4e807171656d01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.1.110/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "404b600333c80c2a480ef225af1d9ed9fe4783eee07051d021f2a26767903463"
    else
      url "https://github.com/owayo/depup/releases/download/v26.1.110/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adc8e71221d4f2a08eaa036c690f6e1adfea9a8d3d624548b920daf33928d356"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
