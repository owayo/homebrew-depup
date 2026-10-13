class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.107/depup-aarch64-apple-darwin.tar.gz"
      sha256 "fa534b739cdd90fc24582a4d986275e66817b7958e81531d429f91caa77e218c"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.107/depup-x86_64-apple-darwin.tar.gz"
      sha256 "c4d6e0db4e4601863fc96a8986aba171cc501627694033535e8e4c781fc53757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.107/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec7c6dabd08f8fc01f48942479eb5dc9f2533a7999b03c41ac7571d9273963c0"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.107/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44cb0a2ec295755178e6cf4ac0facd88d9c4a60bfaf469bfed03a5c2dae9c7b3"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
