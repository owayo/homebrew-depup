class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  version "26.2.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.105/depup-aarch64-apple-darwin.tar.gz"
      sha256 "7bd45be1df4450c20ea89f288f034130809a1e87455b96a76d4ede313fbd0a55"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.105/depup-x86_64-apple-darwin.tar.gz"
      sha256 "f3378fdc12dce7d71d3e809abf49373fdc8ebba03d91cfd78f99ef0dcff6f070"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.2.105/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9b93be0279d15a74b0af02a7c55ae70f45e540bb5b197f1548d832de9aa8c5c"
    else
      url "https://github.com/owayo/depup/releases/download/v26.2.105/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac3f9dcf287ecd26e459c759de84da4ec7715e084eaf2ae8d664472de5d4d4c6"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
