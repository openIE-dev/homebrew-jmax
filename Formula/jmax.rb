class Jmax < Formula
  desc "Math-native language and CLI for science, data, and simulation"
  homepage "https://charlot-lang.dev"
  license "BUSL-1.1"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e826212aae1204dc4c5716341c942ad335f3f8ddf5a6862e4224e39d0e63f875"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "235d735ba58655ae232e834817ac13f3416d7f676035f309d4dda579c1f54963"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8c74b657d2ae1ccd99a17f33dfe00c95a9719b663ec37b9eb6bdbc816ad76b8"
    end
  end

  def install
    bin.install "jmax"
  end

  test do
    assert_match "jmax #{version}", shell_output("#{bin}/jmax --version")
  end
end
