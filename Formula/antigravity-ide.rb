# Formula/antigravity-ide.rb
class AntigravityIde < Formula
  desc "Integrated development environment tooling for Antigravity"
  homepage "https://github.com/saharshpoddarorg/homebrew-internal"  
  url "https://github.com/saharshpoddarorg/homebrew-internal-releases/releases/download/v1.0.0/antigravity-ide-v1.0.0.tar.gz"
  sha256 "376DC897D101CD09F2F9BD94168E53DC1EC62821624142745E14FC53D06811B1"
  version "1.0.0"

  def install
    bin.install "antigravity-ide"
  end

  test do
    assert_predicate bin/"antigravity-ide", :exist?
  end
end
