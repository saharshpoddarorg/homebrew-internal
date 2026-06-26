class AntigravityCli < Formula
  desc "Command-line interface for the Antigravity ecosystem"
  homepage "https://github.com/saharshpoddarorg/homebrew-internal"
  url "https://github.com/saharshpoddarorg/homebrew-internal-releases/releases/download/v1.0.0/antigravity-cli-mac-arm64-v1.0.0.tar.gz"
  sha256 "9cadd7a5b8adf6c718aa7ab5bf6fa6a326bec77861374035058ff8891cc595a6"
  version "1.0.0"

  def install
    bin.install "agy"
  end

  test do
    system "#{bin}/antigravity-cli", "--version"
  end
end
