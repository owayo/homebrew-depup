class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.113/depup-aarch64-apple-darwin.tar.gz"
      sha256 "28ffc93e3136747487342de019d99f159664c58dc7e6defe680279b012f60538"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.113/depup-x86_64-apple-darwin.tar.gz"
      sha256 "cf55366fb3626281c1de637f394f48c046908a4f5d87bf19581405293d4416e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.113/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd34fad03716e7a8108ff94f0a48e653668d82cfb2fcb96cade46bee2bc47c0a"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.113/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dcf1e4d0c5e63ad16380813613e46d0a26ce4cd4ebea706b300d5fb99b79a857"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
