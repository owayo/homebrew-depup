class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.3.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.100/depup-aarch64-apple-darwin.tar.gz"
      sha256 "3898750e23cedb3ac0f7fb974c4f3e898759d76d8c3ff9e6052e00796bdb8084"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.100/depup-x86_64-apple-darwin.tar.gz"
      sha256 "22ee44b0fb660399111f11220763637994fefda421d31f6dab7af1bf2567bea8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.3.100/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97baa62571cfd0592575a5876b60e7d90f1d127e5385376b434453f7bb5c1941"
    else
      url "https://github.com/owayo/depup/releases/download/v26.3.100/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d558e14fdbda8ec3645998eff3d01be2f68157642d433594444e1ff24554b077"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
