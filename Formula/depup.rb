class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.11.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "a65961d86150ea5268dfba6fe25cdfa5e4e0b4c75a1ee83ed2d193311c922a1e"
    else
      url "https://github.com/owayo/depup/releases/download/v26.11.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "843a8fcb71029b20a809f63a6d2ef2028adc8d69e858023feec8077f30cb99d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.11.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e86cf12a62f266ff33cfd956838750aedd729b06bde90b0475d9faa4178a1b8a"
    else
      url "https://github.com/owayo/depup/releases/download/v26.11.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abdb878b0ddb6c390d264b82521768a27d5691b772929fb68817ca53c7cea06c"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
