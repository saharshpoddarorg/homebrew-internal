# Formula/antigravity-cli.rb
class AntigravityCli < Formula
  desc "Command-line interface for the Antigravity ecosystem"
  homepage "https://github.com/saharshpoddarorg/homebrew-internal"
  
  # TODO: Update this URL to point to your actual GitHub Release tarball or zip
  url "https://github.com/saharshpoddarorg/antigravity-cli/archive/refs/tags/v0.1.0.tar.gz"
  
  # TODO: Replace with the actual SHA-256 checksum of your release asset
  # Generate on Mac/Linux via: shasum -a 256 <filename>
  # Generate on Windows (PowerShell) via: Get-FileHash <filename> -Algorithm SHA256
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  
  version "0.1.0"

  def install
    # 'bin.install' moves the compiled binary into the Homebrew symlink directory
    # Ensure the string matches the exact name of the binary inside your tarball
    bin.install "antigravity-cli"
    
    # Example: If you later add man pages or config files, uncomment below
    # man1.install "docs/antigravity-cli.1"
    # etc.install "config/antigravity.yml"
  end

  test do
    # Validation step: ensures the binary executes correctly post-installation
    system "#{bin}/antigravity-cli", "--version"
  end
end
