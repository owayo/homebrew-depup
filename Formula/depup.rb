class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.11.102/depup-aarch64-apple-darwin.tar.gz"
      sha256 "9ef71cf0924b96b4914db800b7dd5d6834fbb2f4d7301bb5f6a1d3493d7a3716"
    else
      url "https://github.com/owayo/depup/releases/download/v26.11.102/depup-x86_64-apple-darwin.tar.gz"
      sha256 "b6617a68f79c06b4e0db1a6fb5ef55863152ae76b5d3f8afa4364a289c4bc8e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.11.102/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2a4f871d328902c3c91bcfdd535b7c9302c3cdfbdc08dab141dc6fefde1a211"
    else
      url "https://github.com/owayo/depup/releases/download/v26.11.102/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39e9012853f7958d453d3b336547d88068cc86827a3306528d6104c3ff72769b"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
