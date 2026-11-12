class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.11.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "11f92f8eadd4222697825d10b4ebc9cf975f418d2b4cd0cfb41e535cf7efdc2d"
    else
      url "https://github.com/owayo/depup/releases/download/v26.11.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "9f119a4845965a8803d5f67b6fef0819b6f4127e5dd2e9db53da46afbc896a20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.11.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76ae0b5182f51e5e597420e9782a71c7567293079f54cc498be9f2a0e9fb2138"
    else
      url "https://github.com/owayo/depup/releases/download/v26.11.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "248c7a096c786bdfc2235f24a3b8e6814b2bcc0fc9d11810fa632439ea09050c"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
