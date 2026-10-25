class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.115/depup-aarch64-apple-darwin.tar.gz"
      sha256 "3f9da794f73bb9931987caad31e74f222e7a9040d604054b98b300f3e4a38d3b"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.115/depup-x86_64-apple-darwin.tar.gz"
      sha256 "0f632cd27346c07d6979cc8e15deb32bd49493b270b1ebc0599dd8ef907c158b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.115/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65530ed67d40f6c82835eaaa0de12a29d9201dd305139e42b41b1be01d1ab708"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.115/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dba7b7660f53fa7cb61001b5257c3600e0030337561badec29fc5a76ff82805b"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
