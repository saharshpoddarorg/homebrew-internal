# 🍺 Homebrew Internal Tap

Private **Homebrew Tap** for internal tools, scripts, and the proprietary **Antigravity** ecosystem.

This repository acts as the **Logic Layer** for Homebrew distribution. It stores only formula definitions and tap-level documentation.

> Heavy release artifacts such as binaries and `.tar.gz` packages are **not stored in this repository**.  
> All release assets are hosted separately in the centralized artifact store: **`homebrew-internal-releases`**.

---

## 🚀 Usage

To access the internal tools hosted in this tap, add this repository to your local Homebrew installation:

```bash
brew tap saharshpoddarorg/homebrew-internal
```

Once the tap is registered, install packages using standard Homebrew commands:

```bash
brew install antigravity-cli
brew install antigravity-sdk
brew install antigravity-ide
```

---

## 📦 Available Formulas

This tap currently hosts the core tools for the **Antigravity** suite:

- `antigravity-cli`  
  Command-line interface for interacting with the Antigravity ecosystem.

- `antigravity-sdk`  
  Core development kit for compiling and building Antigravity modules.

- `antigravity-ide`  
  Integrated development environment tooling, extensions, and related utilities.

---

## 🧑‍💻 Developer Workflow: Adding or Updating a Tool

Use the workflow below to publish a new tool or update an existing one.

---

### 1. Package and Host the Artifact

Do **not** upload binaries or release archives to this repository.

Compress your compiled binary, script, or release folder into a versioned tarball:

```bash
tar -czvf my-tool-v1.0.0.tar.gz my-tool
```

Then:

1. Go to the **`homebrew-internal-releases`** repository.
2. Draft a new GitHub Release, for example `v1.0.0`.
3. Attach the generated `.tar.gz` file to the release.
4. Copy the direct download URL for the uploaded release asset.

> The downloaded URL will be used as the `url` value inside the Homebrew formula.

---

### 2. Generate the Cryptographic Hash

Generate a **SHA-256 checksum** for the `.tar.gz` file.

Homebrew validates this checksum during installation and will reject the install if the checksum does not match.

#### macOS / Linux

```bash
shasum -a 256 my-tool-v1.0.0.tar.gz
```

#### Windows PowerShell

```powershell
Get-FileHash my-tool-v1.0.0.tar.gz -Algorithm SHA256
```

Copy the generated hash value. It will be used as the `sha256` value inside the formula.

---

### 3. Create or Update the Formula

Copy the standard formula template into the `Formula/` directory:

```bash
cp Templates/formula_template.rb Formula/my-tool.rb
```

Update the new formula file with the correct metadata:

```ruby
url "https://github.com/saharshpoddarorg/homebrew-internal-releases/releases/download/v1.0.0/my-tool-v1.0.0.tar.gz"
sha256 "<sha256-checksum>"
```

Required updates:

- Rename the formula file to match the tool name, for example `my-tool.rb`.
- Update the `url` with the release asset URL from Step 1.
- Update the `sha256` with the checksum from Step 2.
- Verify that the install logic matches the packaged artifact structure.

---

### 4. Commit and Push

Commit the updated formula to the `main` branch:

```bash
git add Formula/my-tool.rb
git commit -m "feat: release my-tool v1.0.0"
git push origin main
```

After the push, the updated formula becomes available to machines that have tapped this repository.

---

## 🔄 Updating Local Machines

Once the `main` branch is updated, local machines can pull the latest formula definitions by running:

```bash
brew update
```

To upgrade a specific Antigravity tool to its latest available version:

```bash
brew upgrade antigravity-cli
```

To upgrade all installed Homebrew packages and formulas:

```bash
brew upgrade
```

---

## 📁 Repository Structure

```text
homebrew-internal/
├── Formula/              # Live Homebrew formula definitions
│   ├── antigravity-cli.rb
│   ├── antigravity-ide.rb
│   └── antigravity-sdk.rb
├── Templates/            # Standardized blueprints for new tools
│   └── formula_template.rb
└── README.md             # Tap architecture and maintenance documentation
```

---

## 🧭 Maintainer Notes

<!--
This tap should remain lightweight.
Do not commit generated binaries, archives, credentials, or release payloads here.
All large artifacts must live in the centralized artifact repository.
-->

- **Keep formulas deterministic**  
  Always update the `url` and `sha256` values together.

- **Preserve artifact immutability**  
  Never overwrite an existing `.tar.gz` file on a GitHub Release. If the artifact changes, bump the version number, for example from `v1.0.0` to `v1.0.1`, and publish a new release asset.

- **Protect secrets**  
  Do not commit secrets, tokens, credentials, private keys, or environment-specific values into formula files.

- **Keep this repository lightweight**  
  This repository should contain Homebrew formulas, templates, and documentation only.

- **Prefer versioned releases**  
  Avoid mutable URLs such as `latest`. Formula URLs should point to explicit versioned artifacts.

---

## ✅ Quick Reference

```bash
# Tap the internal repository
brew tap saharshpoddarorg/homebrew-internal

# Install Antigravity tools
brew install antigravity-cli
brew install antigravity-sdk
brew install antigravity-ide

# Update formula metadata
brew update

# Upgrade a specific tool
brew upgrade antigravity-cli

# Upgrade all installed Homebrew packages
brew upgrade
```
