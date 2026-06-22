# Formula/antigravity-ide.rb
class AntigravityIde < Formula
  desc "Integrated development environment tooling for Antigravity"
  homepage "https://github.com/saharshpoddarorg/homebrew-internal"
  
  url "https://github.com/saharshpoddarorg/antigravity-ide/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "0.1.0"

  def install
    bin.install "antigravity-ide-helper"
  end

  test do
    assert_predicate bin/"antigravity-ide-helper", :exist?
  end
end
