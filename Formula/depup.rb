class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.103/depup-aarch64-apple-darwin.tar.gz"
      sha256 "e6f48fe5be34f9b85bf9bee40e97fadf497c4bec49621c351a9e58779cbca2e8"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.103/depup-x86_64-apple-darwin.tar.gz"
      sha256 "114e617414a80f247351421596d24423c9862d333e5c044af0b03be57e209008"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.103/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4b55d05a9baf55e8ead7b055065c931a06402ade152a3a8f7a142fd5a16a9e3"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.103/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f3a0d7ccb041dcf5e41765b570d2228b5c66c6a21b1460fe0e8ad1c1b4b4a78"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
