class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.109/depup-aarch64-apple-darwin.tar.gz"
      sha256 "dba3ed60d5702e0f71f4cb7434ad09ab43ddb1e94220a23b6bd75efbb15c0269"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.109/depup-x86_64-apple-darwin.tar.gz"
      sha256 "951a729d54a4b5f1c1e322323e3e18665eaf77a1ab62a08051365153c72bc48b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.109/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80b477c46078b2a0074f45ab1263d939f7aa464fb77d5d9ed25aa1a3a6f6ef75"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.109/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ea926c8839555d076ffcb8f6ebbc96d48098b21ed2c65fa75dd90e83eede28f"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
