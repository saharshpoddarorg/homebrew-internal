# Templates/formula_template.rb
# ==============================================================================
# STANDARD INTERNAL FORMULA TEMPLATE
# Copy this file into the /Formula directory when adding a new tool to the tap.
# Rename the class and file to match your tool (e.g., MyNewTool -> my-new-tool.rb)
# ==============================================================================

class ToolNameHere < Formula
  desc "A brief description of what this tool does"
  homepage "https://github.com/saharshpoddarorg/homebrew-internal"
  
  # TODO: Point this URL to the .tar.gz file hosted on homebrew-internal-releases
  url "<INSERT_GITHUB_RELEASE_URL_HERE>"
  
  # TODO: Generate SHA256 via:
  # Mac: shasum -a 256 <filename>
  # Win: Get-FileHash <filename> -Algorithm SHA256
  sha256 "<INSERT_SHA256_HASH_HERE>"
  
  version "1.0.0"

  def install
    # Standard installation:
    bin.install "executable-name"
    
    # If the file in the zip is named differently than what you want installed:
    # bin.install "extracted-name" => "installed-name"
  end

  test do
    # Basic validation that the binary executes without crashing
    system "#{bin}/executable-name", "--version"
  end
end
