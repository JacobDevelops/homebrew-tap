class Falcon < Formula
  desc "Fast Dart linter built in Rust"
  homepage "https://dart-falcon.jacobdevelops.com"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JacobDevelops/dart_falcon/releases/download/v0.4.7/falcon-0.4.7-aarch64-darwin.tar.gz"
      sha256 "413cec41729b9f00d4f8ddd9c4003cbecaa6f533eba506317d0ad0cd2298378f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JacobDevelops/dart_falcon/releases/download/v0.4.7/falcon-0.4.7-aarch64-linux.tar.gz"
      sha256 "8cb3e8b97b136f63db772227f6eaaabd3e44dcf23a03d20eba19a84cc8e5ba42"
    end
    on_intel do
      url "https://github.com/JacobDevelops/dart_falcon/releases/download/v0.4.7/falcon-0.4.7-x86_64-linux.tar.gz"
      sha256 "409104f6df9b0014ff83b43f95049e65f5adb3d20f70f71ed4f99555c474cc11"
    end
  end

  def install
    bin.install "falcon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/falcon --version")
  end
end
