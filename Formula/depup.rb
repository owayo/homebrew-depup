class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.1.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.1.108/depup-aarch64-apple-darwin.tar.gz"
      sha256 "95b3f87d5141c0c33291e88437d2a625880cbd72fb5627635151acc7364b61ae"
    else
      url "https://github.com/owayo/depup/releases/download/v26.1.108/depup-x86_64-apple-darwin.tar.gz"
      sha256 "dc7aea95e0289ae12b0129f97c4de71b90acee82c553c49572be9d6c6dd8f0dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.1.108/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90255557dd5989e3a986149dc475b548eebf19195f0ac76fadad0f01715d42dc"
    else
      url "https://github.com/owayo/depup/releases/download/v26.1.108/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c34e5c3eb676abdd98ce43e9d901142f29e5983d917c329eb693ebaa8eafd44"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
