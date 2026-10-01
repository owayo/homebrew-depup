class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "db0a8a6f18eb98aabdbdc5d855f225a4313a8e869ae1d1fd9bceddbb240370a2"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "e8180b1a6f8b710beabb8fd825d47a9e39a9af396b874cde889d30e2f75cdd00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7961f4ba108618321d00472c363b495dfe7aa340db340e617e501ef1df6f2f97"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01f7c63592831dec172866d11194a4b7a72f74655dc9a9e897cf8eec92e85c39"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
