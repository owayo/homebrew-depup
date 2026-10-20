class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.112/depup-aarch64-apple-darwin.tar.gz"
      sha256 "91b25e4b34943c58c8a21ca207e377167357e79f48bb169a48763ba94a0ffa9c"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.112/depup-x86_64-apple-darwin.tar.gz"
      sha256 "04eaa135ef6f15b98be0a545c5aa8addfd2b6a2ef5f8c9f6eeb3795920d67ff1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.112/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "44201e2aa94df28c3abcdf01b2c31a8a029e606ff84b4406819665448b872e8c"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.112/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb1b1c7c5a7f45f8a43e84fb9823c58f4a38b3586caba43336ea0a803911d31f"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
