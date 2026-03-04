class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.3.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "6a119c3d55bd44a7c0df9772b72e092ee28cc9ffb529ac789210ea3c7a506561"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "2751902d2d0c6a9f69ef6ae010ec2de525fcf92acbd5a01014adfa68c8be8a3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62e8f8f598c49cb1db4fcc51c3b97cd3b5d8ffca330f8ba0fef4d6c40c8d81bc"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71ad8aa8c8334c9cb44fe083a5edbcb6558b6f5d0ca14aab549d945da38900fe"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
