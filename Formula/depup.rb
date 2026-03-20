class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.3.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.105/depup-aarch64-apple-darwin.tar.gz"
      sha256 "68ceffa9df12d54b982ae5834cd425af81aeec04c0d8f97f74a92d50da04ff4c"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.105/depup-x86_64-apple-darwin.tar.gz"
      sha256 "a6ad0344e83afb4906213290dd9315cac782328b05595f8ee7ec1dd6d01495e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.105/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f62a6733e2949016b8c7c474f4291f4bfd77796bf5d4ffa7d4b8f19cb3a27c79"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.105/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "525b0012adce5e8a5c6416264cc0e49952474996ca535a4a2caf53a65cdf7e07"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
