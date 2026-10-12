class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.106/depup-aarch64-apple-darwin.tar.gz"
      sha256 "9a77c02763b14716b979175a744a147a8fb47265eb24e47a8e5a5513fc7627fe"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.106/depup-x86_64-apple-darwin.tar.gz"
      sha256 "afa60f89cf1add8a6b29d8d3b308ab81d9815b17dbaabf977d4c2cc235ab02cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.106/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f9bf93e3c98abc4cc072b177bb988ffad78f95e1dcb7031627abe6456c211b8"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.106/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8cc2c6f83f52d82611ada2867beb435ae53d004f45996cc0500f0c60bb7a55a"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
