class Jmax < Formula
  desc "Math-native language and CLI for science, data, and simulation"
  homepage "https://charlot-lang.dev"
  license "BUSL-1.1"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "10636b81372d5c137888781168f02f7b642df7d69bb57b34db6cda09c4066861"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1ab306ca9a6341c282796758d43eb0f446535bf955d80bbc21f21e2f71f67fac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e46395360917a1d37d1ecdc06f333ff449d49a6dcc56fa31b90e9792eaac80e"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a610f0bd5cd27b6cc2fd1c91cc0f6460337cdc3c1f9e458f3d8ec8bb43f417ba"
    end
  end

  def install
    bin.install "jmax"
  end

  test do
    assert_match "jmax #{version}", shell_output("#{bin}/jmax --version")
  end
end
