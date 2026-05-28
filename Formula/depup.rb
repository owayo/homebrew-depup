class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.5.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.104/depup-aarch64-apple-darwin.tar.gz"
      sha256 "3eed963060fcc90706960b858592118f0418a7a1d380ccabc6900f8203f2133e"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.104/depup-x86_64-apple-darwin.tar.gz"
      sha256 "f7fbcc30f2daa24af75a3ab2f62de761a9473f14766f37443bd3cd7032216caf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.5.104/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db73fde7af0fe84d5d06196720368d11f5ac58b5faf046859a5c1813b574cd26"
    else
      url "https://github.com/owayo/depup/releases/download/v26.5.104/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4b14257d9e951734bd54d0f1c91d3246868368df71a327ba30661316a249430"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
