class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.117/depup-aarch64-apple-darwin.tar.gz"
      sha256 "a84b8843139874686cef19b3607252365ef6c5e9ececeb418f394eea078ac69b"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.117/depup-x86_64-apple-darwin.tar.gz"
      sha256 "6cbf966ddd9ebb12fda0fdc7dba3d9e7e475364618aa26c97d3e2949683e6276"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.117/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e159cf759e34b19fc27b54fdba9c82164bc4f364e52facac8383cb79351876d"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.117/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23d010fe67bbabf9ef7432e20416c55cd688fb9de52f9f4e032304349a6d9eed"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
