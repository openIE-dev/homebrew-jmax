class Jmax < Formula
  desc "Math-native language and CLI for science, data, and simulation"
  homepage "https://charlot-lang.dev"
  license "BUSL-1.1"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6ea406c106d96b67f6dec61ed2f73239aab9444e55086c48688f3c3b7cd0298f"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "def016a11e95b519f9acc9753b21cdde9ea0e7b5744485647dca2e4ecdd89b03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ced5e5f081502a10f8556e4492f67b72fe68b650f0f8486c9ed20baa9b035662"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47c16c74a82a65dc1af00299fbd35559718d1e00874c53f2874f8d7dfacf23cb"
    end
  end

  def install
    bin.install "jmax"
  end

  test do
    assert_match "jmax #{version}", shell_output("#{bin}/jmax --version")
  end
end
