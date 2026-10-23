class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.114/depup-aarch64-apple-darwin.tar.gz"
      sha256 "c0bd1dff480c8018482935f0c84e3d4d98e3cded295cd0698f9e968b6677d149"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.114/depup-x86_64-apple-darwin.tar.gz"
      sha256 "451e1063273069c8a01e4c834411edbcb50b8b425e508e2c864aeb62cd6e6adc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.114/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed40d113a48492803a90ba28e4af32a767f56a0f44f454fa23aa9a9cdcd635ea"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.114/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ae5b166ea6a87a6d4e63ae7dbee24ded1e68e1bfba8d8902f2da52e5b50aad0"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
