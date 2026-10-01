class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "9e168ed330a0328d4524e428d7cfef938fa5d709b9a2fc546222cf32e9c9b2a7"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "d69d0e257b07937c7f80175ca23b64caae44d587a57d60692adb6bd49f46ac6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "291cc5e769f5e62b87a11285248a0aa415a94fa77ceb6c987652bd96d6d82c0a"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db96ced82099a13bbc6afeafa5eeb4193bb04bc81a700e2da896fd2db585b01a"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
