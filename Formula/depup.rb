class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.2.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "5e65bb20d5d68e18343ea0803a21d821210650b232e80b5266f88b0c69f9f39b"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "2b27f2964d7afa0e3e89a3c5fbe849e33d6c639c865f1489cb98aa3fd220e31e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73725a218463049463a7f2831a325ab8aed34d48ae9138567ff58b5830addbf9"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b448301a5c3c2017bb28e9a2584360e775f83470ca6106485920d6d2af409959"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
