class Jmax < Formula
  desc "Math-native language and CLI for science, data, and simulation"
  homepage "https://charlot-lang.dev"
  license "BUSL-1.1"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6b31bc981b9dd435dbe833d8c09be28fd8bc174a10089712458883915fb1451f"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a8d67a148806946b8aa7468237d81dea3f708e3d4d74713d20333c9be6176f2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d3539694d7247a0008c209810a7be0b25f19431799d226584703e895bdd7976"
    else
      url "https://github.com/openIE-dev/jmax/releases/download/v#{version}/jmax-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ff6377214ec2247f568c58ec034af1babb1100fd82bdb0d56d00abc28d9f37e"
    end
  end

  def install
    bin.install "jmax"
  end

  test do
    assert_match "jmax #{version}", shell_output("#{bin}/jmax --version")
  end
end
