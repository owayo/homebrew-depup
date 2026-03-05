class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.3.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "a7e5a07a8204433bafd2a79da89bdd380d6daf831a7170b7c3285a8c04798235"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "48d95152c227870739964b9bc62bddcfc481919675a0b600f4cd142345995afd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00b2bf2fbf48241c2b82e5680d0f20339a0b1e6f853aaec780bb8d9f45d36959"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44438a8c485cbe5e45f2095dcfb16396b07078a6d96b27ebec15f0c99e1230b9"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
