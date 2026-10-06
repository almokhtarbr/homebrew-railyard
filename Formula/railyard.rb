class Railyard < Formula
  desc "Deploy and run apps on servers you own"
  homepage "https://railyard.run"
  version "20261006-12209ae2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://app.railyard.run/cli/v20261006-12209ae2/railyard-darwin-arm64.tar.gz"
      sha256 "73a9ae5d0c57408bb738cf16f109a201a9b7888cf198baf9216123333babfb9b"
    end
    on_intel do
      url "https://app.railyard.run/cli/v20261006-12209ae2/railyard-darwin-amd64.tar.gz"
      sha256 "8a3048895fb22a191534fe5309dc16509914f732b5b63908d32029b9c39a50be"
    end
  end
  on_linux do
    on_arm do
      url "https://app.railyard.run/cli/v20261006-12209ae2/railyard-linux-arm64.tar.gz"
      sha256 "2e4be539362f5ed6ae2209bb0aa263523cbeb8a9b6caf2520115d73ebaca8c72"
    end
    on_intel do
      url "https://app.railyard.run/cli/v20261006-12209ae2/railyard-linux-amd64.tar.gz"
      sha256 "831e263cb5c79fbfdbbf6e7af4526e16be6a1e4cfb72613a96d668bc66f30495"
    end
  end

  def install
    bin.install "railyard"
  end

  test do
    assert_match "railyard", shell_output("#{bin}/railyard version")
  end
end
