class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.6.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.101/depup-aarch64-apple-darwin.tar.gz"
      sha256 "b55407c4fac1b59801112c62e7975c660a9352eff2eab5a2f1dbcc0894409d84"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.101/depup-x86_64-apple-darwin.tar.gz"
      sha256 "0bc7e67f5c1d2fca2e3183796d237c48f03cc51d907200e12db97deeddc56efc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.6.101/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ccaa60bb13198bd3ac49bc80e02fb550e6108fc30814dfc5b9bf56a9d224560"
    else
      url "https://github.com/owayo/depup/releases/download/v26.6.101/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "035f2ac1a60c480f4c339acf3dae1a3c0f08aa647a421da2e3049456438f01ec"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
