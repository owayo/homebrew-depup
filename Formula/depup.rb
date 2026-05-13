class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.5.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "4fd9913acd7d25dbf2116681dd86a089d02cd83eda5941f23143498ccfe6a6bc"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "fffac9188136fcb38026022e5c3d86780d631d76d8a26fc1a51992a19c808d53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4db7d6406d45b77027679d7d529126fe44016ebf4a40c376c0a8516ba0a23ad"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00268a5c944cc7098bc99ebe91a035c8e1041ae2ce169a5263dd6736b3b4030d"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
