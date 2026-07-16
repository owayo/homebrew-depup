class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.7.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.7.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "f175186167193473e372055eb322d91ac94f2e3a7eca97c801366a6bb8106e09"
    else
      url "https://github.com/owayo/depup/releases/download/v26.7.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "a38159b16eb4dbde778dccf13f0f7970eb10b609a3830baa8d0542d30fb558bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.7.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42ac98d209efd5f36d8f504ecb3ecd6add53e94a6d44c5b92be30386488ca9c9"
    else
      url "https://github.com/owayo/depup/releases/download/v26.7.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "714a749792e6bc148a2a7ebef31c23e6d61082d35f68fbeb5fe5490366a6ec98"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
