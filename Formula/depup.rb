class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.3.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.104/depup-aarch64-apple-darwin.tar.gz"
      sha256 "8c62bbbb2dc9723b2b11ca2fa9d0760ffe38051dd2125eea28cebe9915a64e6b"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.104/depup-x86_64-apple-darwin.tar.gz"
      sha256 "5b36980935a6822e5156de09487eaa81cede1e6a46a05b66f5eae02eab29caef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.104/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec95ffec6b737d50573cb2beb725529554e76aeb38ba8e5dc0474d7ee2459c02"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.104/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "516fdc62a7cf67f563dd78af04b3e59a4817d6be79338b4f041aaab77180ebdd"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
