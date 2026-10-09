class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.105/depup-aarch64-apple-darwin.tar.gz"
      sha256 "539c368fa9751ec03b056e8de9b4f029dba495e8a727430a91b44a0becaf721f"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.105/depup-x86_64-apple-darwin.tar.gz"
      sha256 "3e1f2cdeca4ed17f25b93878e04ba472aa1d7a8e849f62c7b6869b47e16e2194"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.105/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5ba24c725d674d0025427c4f314c67ae681ac2dba70c7e7059d77a55a949375"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.105/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11d2ef538f7e849c91c8217a28cd88f021e4f89478f354cdd493e48eafc1fefe"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
