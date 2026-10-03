class Railyard < Formula
  desc "Deploy and run apps on servers you own"
  homepage "https://railyard.run"
  version "20261003-1d37cc71"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://app.railyard.run/cli/v20261003-1d37cc71/railyard-darwin-arm64.tar.gz"
      sha256 "aaeb581883967b9c776b7d76bb8076face980959bec2690dd056a4890781d76f"
    end
    on_intel do
      url "https://app.railyard.run/cli/v20261003-1d37cc71/railyard-darwin-amd64.tar.gz"
      sha256 "830f35b79a0a833deca939995b742c26bdecded7968df4be472305711489f020"
    end
  end
  on_linux do
    on_arm do
      url "https://app.railyard.run/cli/v20261003-1d37cc71/railyard-linux-arm64.tar.gz"
      sha256 "e7ec9ea9022c449c1483b7d47beab5795e831ee063ae7c61d9a6f134b9635c57"
    end
    on_intel do
      url "https://app.railyard.run/cli/v20261003-1d37cc71/railyard-linux-amd64.tar.gz"
      sha256 "3519ceae286bf6c6339ad295f5a8139bfe494ec4a714b531f797feee165e121b"
    end
  end

  def install
    bin.install "railyard"
  end

  test do
    assert_match "railyard", shell_output("#{bin}/railyard version")
  end
end
