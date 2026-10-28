class Depup < Formula
  desc "Multi-language dependency updater CLI tool"
  homepage "https://github.com/owayo/depup"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.116/depup-aarch64-apple-darwin.tar.gz"
      sha256 "e2faae147c3dfd482b1676aa3f891f8d415225338a00d73bf46454f158ab35bf"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.116/depup-x86_64-apple-darwin.tar.gz"
      sha256 "52f8342f81c4aaf5f1c52c707060e954b39ceb2af8021b217caf719986428454"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/depup/releases/download/v26.10.116/depup-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b7a3368f250a5f7f46b9c8cfa830b74c206af91b9e88ee8144675c89b6679e9"
    else
      url "https://github.com/owayo/depup/releases/download/v26.10.116/depup-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb32d7501adf13ebf254d6a4edec86351d6db66c98859816f1354a43011cbc6d"
    end
  end

  def install
    bin.install "depup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/depup --version")
  end
end
