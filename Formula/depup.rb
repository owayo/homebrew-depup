class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.108/depup-aarch64-apple-darwin.tar.gz"
      sha256 "77ba8582f026da67d7ea8139dae75bc0693ffe636e583ae7dcf34d9082243215"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.108/depup-x86_64-apple-darwin.tar.gz"
      sha256 "32a323189e33f7538bb780692ddda8914b895ff730487d1eb7c2bd5dafb0d830"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.108/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c03880d515b170837868885f908b3c56543dd7e66c760612a5d0d5d33e781265"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.108/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ecb404e813260626910a1de8802c7d1fa5282666d92b8849ca9fc2cb76cafdea"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
