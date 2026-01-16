class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.1.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.1.109/depup-aarch64-apple-darwin.tar.gz"
      sha256 "cfab520f0e3cbe8aba20d89b6f517fad5811b2e66633576924c10d766b766fb5"
    else
      url "https://github.com/owayo/depup/releases/download/v26.1.109/depup-x86_64-apple-darwin.tar.gz"
      sha256 "c994a5c729cf14148a8c15910e55d3432dbbb9175c3cff17787c130e3de9f69d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.1.109/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "025bd2595497b7afb20c1287c6a3ad3085009483102507eaa7cbf71f4b9cefe9"
    else
      url "https://github.com/owayo/depup/releases/download/v26.1.109/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ccf8765163c6b9042858a2d2587eb730b0167a7917ede1ff2cee173a5978331"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
