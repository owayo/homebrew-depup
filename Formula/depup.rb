class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.111/depup-aarch64-apple-darwin.tar.gz"
      sha256 "6ecd7a5fce7c7966a96017d2ee6ee2881fd6a7d0e2958d11eabd76c7ed389630"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.111/depup-x86_64-apple-darwin.tar.gz"
      sha256 "004039eaf40e1ba04841efa0c0d0c8a7fba3aabe4ee27947dbb6bd753cb7d06e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.111/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f4412910c95057425f088fad51ad659e7a3645856cd70f181279f8ce6d97bb4"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.111/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32739d11edbad0e027a7bab3d9d05ba2986799241d4794f274b229f33041c347"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
