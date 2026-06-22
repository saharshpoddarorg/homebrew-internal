class AntigravityCli < Formula
  desc "Command-line interface for the Antigravity ecosystem"
  homepage "https://github.com/saharshpoddarorg/homebrew-internal"
  url "https://github.com/saharshpoddarorg/homebrew-internal-releases/releases/download/v1.0.0/antigravity-cli-v1.0.0.tar.gz"
  sha256 "2E83DCD4C0932049DFF2CE6E60B13A610CBC2E6F63EEE76CFE5A46E80FD2EB59"
  version "1.0.0"

  def install
    bin.install "antigravity-cli"
  end

  test do
    system "#{bin}/antigravity-cli", "--version"
  end
end
