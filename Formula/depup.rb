class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.121/depup-aarch64-apple-darwin.tar.gz"
      sha256 "aa226d02e1a6907178f3f347c3af522548eef8d850e23b3a9cdbf32d7c87cc8d"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.121/depup-x86_64-apple-darwin.tar.gz"
      sha256 "6a9f21b59550a11c91fa108eef174ee199705823914edce9581eb75d6969f8a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.121/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9fb66ec4f1b2755f457adc88f7c848de675b39907038da5ed8825a6816168fa"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.121/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d58f22e718a6d55bb088c8d32e1c55ef046b5d63113f4bce5da32c00b4bdf9df"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
