class Jmax < Formula
  desc "Math-native language and CLI for science, data, and simulation"
  homepage "https://charlot-lang.dev"
  license "BUSL-1.1"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c0ffe84354ee849c76c281f022d9af8e1ff581f25ca4590b78c766077348a14e"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "72261c9e0dbd71c99c12cd1cc36ce00416da3fc5437f3d34a9d08c84f525cf36"
    end
  end

  on_linux do
    # v0.1.5 is a macOS-only interim (the unknown-function fix); Linux stays on
    # v0.1.4 until its binaries publish, then these move back to v#{version}.
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v0.1.4/jmax-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e46395360917a1d37d1ecdc06f333ff449d49a6dcc56fa31b90e9792eaac80e"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v0.1.4/jmax-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a610f0bd5cd27b6cc2fd1c91cc0f6460337cdc3c1f9e458f3d8ec8bb43f417ba"
    end
  end

  def install
    bin.install "jmax"
  end

  test do
    assert_match "jmax", shell_output("#{bin}/jmax --version")
  end
end
