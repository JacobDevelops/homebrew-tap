class Falcon < Formula
  desc "Fast Dart linter built in Rust"
  homepage "https://dart-falcon.jacobdevelops.com"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JacobDevelops/dart_falcon/releases/download/v0.4.6/falcon-0.4.6-aarch64-darwin.tar.gz"
      sha256 "ef2cd28703b99340d4269271526408927b6b3cd62c254aa73ed0896ac350a54c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JacobDevelops/dart_falcon/releases/download/v0.4.6/falcon-0.4.6-aarch64-linux.tar.gz"
      sha256 "376455910fcfabc014d9b546ace6b57cea237d927b78d57cbae28405813c172e"
    end
    on_intel do
      url "https://github.com/JacobDevelops/dart_falcon/releases/download/v0.4.6/falcon-0.4.6-x86_64-linux.tar.gz"
      sha256 "e2709d7ce59a799de62bb7e2e7cbb6624bba925125fc0ba09b54ea89be09ccd6"
    end
  end

  def install
    bin.install "falcon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/falcon --version")
  end
end
