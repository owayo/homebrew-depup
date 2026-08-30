class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.8.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.8.103/depup-aarch64-apple-darwin.tar.gz"
      sha256 "917a36f32df6b569bd2a4fd05e81e3cab7f4216c15dafad40634d3650b28c438"
    else
      url "https://github.com/owayo/depup/releases/download/v26.8.103/depup-x86_64-apple-darwin.tar.gz"
      sha256 "1f0a662936ac35f0332c56bbf6bcd39eb8e390353c043df9126483ca60ba61bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.8.103/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8653793347b87bf9275300d21b285c7ebc3e5b092aed9f7ff0652085c58409f8"
    else
      url "https://github.com/owayo/depup/releases/download/v26.8.103/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "716be1dea1dbb349869f87013d4346b63fe1ec961aa019a015f673a9dfcbd031"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
