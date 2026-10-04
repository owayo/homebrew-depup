class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "ce4f2726170ce295c1f75e8b82d9f5d2a5d723750861a1890aee79400a79e485"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "01ae0068744b7c8fdcabaddb99fff435e25bdcc27fff81260b53e226b4dde8c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e32acd1d4d191b314d6ef78ba498c5af144d81e0cfd46c577b1f83c10483320"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cda6f10928e077353a16a2330e2a9c11a1deb835f3698366d08a3dad84b42fa"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
