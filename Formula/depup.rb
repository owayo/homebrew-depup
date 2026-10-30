class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.118/depup-aarch64-apple-darwin.tar.gz"
      sha256 "6854599a201820ea53773fcc1798b7141f49ca0756c6d22faeda7f34bc840d89"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.118/depup-x86_64-apple-darwin.tar.gz"
      sha256 "4af19de02fc97090867881e5f5f6edfa3be4a72d3b612f79a536cb3d48f739de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.118/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6deb6124533a474247fe1588bd30c32608dbbce375904e19af3c57c07179bedb"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.118/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f625c6c7639f38be1ab66713425c90ba46ec0a764cf0591988cd792bd56f96ab"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
