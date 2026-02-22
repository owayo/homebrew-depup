class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.2.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.106/depup-aarch64-apple-darwin.tar.gz"
      sha256 "7bc8b689c610fc02d94818fe2fa3af82ba9da465e609852a773adc3eab70cdfa"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.106/depup-x86_64-apple-darwin.tar.gz"
      sha256 "d18d077905a309ff93e9d18a985e5baaa74ce15aaaabc7dc2b4f057c5ce2adc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.106/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "855203cf8eff00d56e3b2404aa6dbabb99cfb087586fbf52b3f85d3cf209aec1"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.106/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd665d752fc37a3afc2eaba15025a427dffe5e092dc0652d53ba2c93970039e9"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
