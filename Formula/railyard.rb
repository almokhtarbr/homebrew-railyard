class Railyard < Formula
  desc "Deploy and run apps on servers you own"
  homepage "https://railyard.run"
  version "20261003-b1016f73"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://app.railyard.run/cli/v20261003-b1016f73/railyard-darwin-arm64.tar.gz"
      sha256 "1e53d31ebab10a52d9430464520b3674946ee760f2851f6c648a5e289c0282e8"
    end
    on_intel do
      url "https://app.railyard.run/cli/v20261003-b1016f73/railyard-darwin-amd64.tar.gz"
      sha256 "6461b698e1a94bb0c7f2bcf5ef888457c2ea3acfdc617bddfc5b97c5b55b18e1"
    end
  end
  on_linux do
    on_arm do
      url "https://app.railyard.run/cli/v20261003-b1016f73/railyard-linux-arm64.tar.gz"
      sha256 "7434739e23e2efddd4efec83a8066ccb09ce94955d272ed63ea663a83a74f8fa"
    end
    on_intel do
      url "https://app.railyard.run/cli/v20261003-b1016f73/railyard-linux-amd64.tar.gz"
      sha256 "7deecdf1e76f9b360db2af299694448457f831e7ccbaeea58b83a294dcd20371"
    end
  end

  def install
    bin.install "railyard"
  end

  test do
    assert_match "railyard", shell_output("#{bin}/railyard version")
  end
end
