class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.9.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "f96f324822f44f2ff004ece9a6d08bd6d85fdb1f7a75e6eec6468936a92d0597"
    else
      url "https://github.com/owayo/depup/releases/download/v26.9.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "f7f2db2ceaa23842f1be22f5fa941555222f46237fba13306d6082b111707491"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.9.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9432fd3d32008d7ced13b8d6e34ea2006529b9ff0e5e412ec03ed4172fd1f8e5"
    else
      url "https://github.com/owayo/depup/releases/download/v26.9.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "508c77ceb9e768aa8336c0fdaba401b112ec38f40d00d844e3c2c48b56035cc0"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
