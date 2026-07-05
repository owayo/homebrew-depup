class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.7.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.7.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "f45851690a56230e77f3fb43bd135cef31df61a517249a9be9079595ae264566"
    else
      url "https://github.com/owayo/depup/releases/download/v26.7.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "47d3d30f26b8ee72fccdd62a5140d134acc0dbcbd2aef57ddc6bfa1d98ba0566"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.7.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "191556fde68ef257725305c05cfb9de532997a51466ba9dc92e0a5d4ddb307da"
    else
      url "https://github.com/owayo/depup/releases/download/v26.7.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3ec9ba00cdcfdeed0fc191db2644935f1db26304026ea426184755b53437c44"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
