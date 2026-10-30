class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.120/depup-aarch64-apple-darwin.tar.gz"
      sha256 "8393504b2a932e2f76d8f977281b520aae8979421b35f5b59835e5e218983524"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.120/depup-x86_64-apple-darwin.tar.gz"
      sha256 "c200c07cb911801ba543af7c54d6ba7d1206e7938378d2f1d82051fce5a6621d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.120/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0fc4c33c7b9970df51b66dfdef264615deda7eb1061751ee051720ab9c831fac"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.120/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3324c51500fa184a430937aa02b44f1c3e989135c05f907b82b381fef833f3a8"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
