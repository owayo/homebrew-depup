class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.9.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "a209b5cdb85b6ffd208b3642f9488b9f29227b11aa600fecf876d1a9a6cb65f4"
    else
      url "https://github.com/owayo/depup/releases/download/v26.9.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "008ce2b84c8e5bbe7d0450efc234c4e797ca885709f9c76961131cc47a923c71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.9.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8dc28034761ac70077a66c75129693248c0cd7e891caccfa128f46604058cb97"
    else
      url "https://github.com/owayo/depup/releases/download/v26.9.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c9771e6d99531a1e15d4bfc91269ded74ce0724bcf9736f9df73f711be68c94"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
