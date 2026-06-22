# 🍺 Homebrew Internal Tap

Private **Homebrew Tap** for internal tools, scripts, and the proprietary **Antigravity** ecosystem.

This repository provides a centralized distribution channel for installing and maintaining internal Antigravity tooling through standard Homebrew workflows.

---

## 🚀 Usage

To access the internal tools hosted in this tap, first add this repository to your local Homebrew installation:

```bash
brew tap saharshpoddarorg/homebrew-internal
```

Once the tap is registered, packages can be installed using standard Homebrew commands:

```bash
brew install <formula-name>
```

Example:

```bash
brew install antigravity-cli
```

---

## 📦 Available Formulas

This tap currently hosts the core tools for the **Antigravity** suite:

- `antigravity-cli`  
  Command-line interface for interacting with the Antigravity ecosystem.

- `antigravity-sdk`  
  Core development kit for compiling and building Antigravity modules.

- `antigravity-ide`  
  Integrated development environment tooling, extensions, and related developer utilities.

---

## 🛠️ Installation Examples

Install individual Antigravity tools as needed:

```bash
brew install antigravity-cli
brew install antigravity-sdk
brew install antigravity-ide
```

To verify that a formula is available from this tap:

```bash
brew search antigravity
```

---

## 🔧 Maintenance & Development

Use the following workflow to update an existing tool or add a new formula to this tap.

### 1. Update or Create the Formula

Edit or create the corresponding Ruby formula file inside the `Formula/` directory:

```text
Formula/
├── antigravity-cli.rb
├── antigravity-sdk.rb
└── antigravity-ide.rb
```

> Keep each formula focused on a single installable tool or package.

---

### 2. Update the Release URL

Update the `url` parameter in the formula so it points to the latest release artifact.

Typical sources include:

- GitHub Releases tarballs
- Prebuilt binaries
- Internal release archives

Example formula snippet:

```ruby
url "https://github.com/saharshpoddarorg/antigravity-cli/releases/download/v1.0.0/antigravity-cli.tar.gz"
```

---

### 3. Update the SHA-256 Checksum

Generate a new SHA-256 checksum for the release artifact and update the `sha256` parameter in the formula.

#### macOS / Linux

```bash
shasum -a 256 <file-name>
```

#### Windows PowerShell

```powershell
Get-FileHash <file-name> -Algorithm SHA256
```

Example formula snippet:

```ruby
sha256 "<sha256-checksum>"
```

---

### 4. Commit and Push Changes

After updating the formula, commit and push the changes to the `main` branch:

```bash
git add Formula/<formula-name>.rb
git commit -m "Update <formula-name> formula"
git push origin main
```

---

## 🔄 Updating Local Machines

Once the `main` branch is updated, local machines can pull the latest formula definitions by running:

```bash
brew update
```

To upgrade installed tools to their latest available versions:

```bash
brew upgrade
```

To upgrade a specific Antigravity tool:

```bash
brew upgrade antigravity-cli
```

---

## 🧪 Formula Validation

Before pushing changes, validate the formula locally whenever possible:

```bash
brew audit --strict --online <formula-name>
brew install --build-from-source <formula-name>
brew test <formula-name>
```

> Some internal or private artifacts may not support full online auditing. In such cases, document any expected audit exceptions in the pull request or commit notes.

---

## 📁 Repository Structure

```text
homebrew-internal/
├── Formula/              # Homebrew formula definitions
│   ├── antigravity-cli.rb
│   ├── antigravity-sdk.rb
│   └── antigravity-ide.rb
└── README.md             # Tap usage and maintenance documentation
```

---

## 🧭 Maintainer Notes

<!--
Keep formula names stable once published.
Prefer versioned release artifacts over mutable URLs.
Always update both `url` and `sha256` together.
Avoid committing secrets, tokens, or private credentials into formula files.
-->

- Keep formulas deterministic and reproducible.
- Prefer immutable release artifacts.
- Ensure checksums are regenerated for every release artifact update.
- Avoid cross-tool coupling unless strictly required.
- Document any non-standard install behavior inside the formula itself.

---

## ✅ Quick Reference

```bash
# Tap the repository
brew tap saharshpoddarorg/homebrew-internal

# Install tools
brew install antigravity-cli
brew install antigravity-sdk
brew install antigravity-ide

# Update Homebrew metadata
brew update

# Upgrade installed tools
brew upgrade
```
