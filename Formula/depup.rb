class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.11.103/depup-aarch64-apple-darwin.tar.gz"
      sha256 "ec424a4da5680adc643d8cde2ae88b93ce6d5158342623b2c801e05ed31f53d7"
    else
      url "https://github.com/owayo/depup/releases/download/v26.11.103/depup-x86_64-apple-darwin.tar.gz"
      sha256 "9c3a9ca3e46a543273edf5f5f33c32e3d711c9bf996a992ab90cd2a31283ceb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.11.103/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dda45d9dd472297ab5d968226d2861db492f1ea4fcd467950dcf742457d0ab8e"
    else
      url "https://github.com/owayo/depup/releases/download/v26.11.103/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78709b45b609002306ad45f25cc049dc2bb6e1a6fd88a3e1bea9df522cc88b4e"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
