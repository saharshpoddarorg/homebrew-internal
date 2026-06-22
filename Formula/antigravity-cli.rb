# Templates/formula_template.rb
# ==============================================================================
# STANDARD INTERNAL FORMULA TEMPLATE
# Copy this file into the /Formula directory when adding a new tool to the tap.
# Rename the file (e.g., my-new-tool.rb) and the class (e.g., MyNewTool)
# ==============================================================================

class <INSERT_CLASS_NAME_HERE> < Formula
  desc "<INSERT_BRIEF_DESCRIPTION_HERE>"
  homepage "https://github.com/saharshpoddarorg/homebrew-internal"
  
  # TODO: Paste the direct download URL for the .tar.gz file here.
  # Pattern: https://github.com/saharshpoddarorg/homebrew-internal-releases/releases/download/v<INSERT_VERSION_HERE>/<INSERT_TOOL_NAME_HERE>-v<INSERT_VERSION_HERE>.tar.gz
  # Example: https://github.com/saharshpoddarorg/homebrew-internal-releases/releases/download/v1.0.0/my-cool-tool-v1.0.0.tar.gz
  url "<INSERT_GITHUB_RELEASE_URL_HERE>"
  
  # TODO: Generate the SHA-256 hash for the .tar.gz file and paste it below.
  # Windows (PowerShell): Get-FileHash <filename> -Algorithm SHA256
  # macOS/Linux:          shasum -a 256 <filename>
  sha256 "<INSERT_SHA256_HASH_HERE>"
  
  # TODO: Replace with the exact version number (e.g., "1.0.0" without the 'v')
  version "<INSERT_VERSION_HERE>"

  def install
    # Standard installation:
    # Use this if the file inside your .tar.gz exactly matches the tool name.
    bin.install "<INSERT_EXECUTABLE_NAME_HERE>"
    
    # Renaming installation:
    # Use this if the file inside the .tar.gz needs to be renamed upon installation.
    # bin.install "extracted-name" => "installed-name"
  end

  test do
    # Basic validation to ensure the installed binary executes without crashing.
    system "#{bin}/<INSERT_EXECUTABLE_NAME_HERE>", "--version"
  end
end
