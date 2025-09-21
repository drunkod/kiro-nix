# Kiro IDE for Non-Root Environments

This repository provides a Nix flake wrapper for running Kiro IDE on systems without root access, where unprivileged user namespaces are disabled.

## Prerequisites

- [nixstatic](https://github.com/DavHau/nix-portable) or similar portable Nix installation
- System with x86_64 Linux
- No root access required

## Quick Start

### Using the Flake (Recommended)

1. Clone this repository:
```bash
git clone <repository-url>
cd kiro
```

2. Run Kiro directly:
```bash
~/nixstatic run . --impure
```

### Available Commands

#### Normal Mode
```bash
# Run directly
~/nixstatic run . --impure

# Enter development shell
~/nixstatic develop . --impure
# Then run: kiro

# Build and run
~/nixstatic build . --impure
./result/bin/kiro
```

#### Verbose Mode (for debugging)
```bash
# Run directly with verbose output
~/nixstatic run .#verbose --impure

# Enter verbose development shell
~/nixstatic develop .#verbose --impure
# Then run: kiro (alias includes --verbose flag)

# Build verbose version
~/nixstatic build .#verbose --impure
./result/bin/kiro
```

## Manual Method (Alternative)

If you prefer not to use the flake, you can run Kiro manually:

```bash
# Enter shell with required packages
~/nixstatic shell nixpkgs/nixos-unstable#kiro nixpkgs/nixos-unstable#firefox nixpkgs/nixos-unstable#xdg-utils --impure

# Configure environment
export LD_LIBRARY_PATH=$NIX_LD_LIBRARY_PATH:$LD_LIBRARY_PATH
export BROWSER=firefox
export DEFAULT_BROWSER=firefox
xdg-settings set default-web-browser firefox.desktop

# Run Kiro
kiro --no-sandbox --disable-setuid-sandbox
```

## Features

- ✅ Runs without root privileges
- ✅ No need for unprivileged user namespaces
- ✅ Automatic sandbox bypass (--no-sandbox flag)
- ✅ Firefox integration for opening links
- ✅ Proper MIME type handling
- ✅ Verbose mode for debugging

## Troubleshooting

### "bwrap: No permissions to creating new namespace" Error
This flake is specifically designed to avoid this error by bypassing the sandbox requirements. The wrapper automatically adds `--no-sandbox` flag.

### Browser/Link Opening Issues
The flake includes Firefox and xdg-utils, and sets the appropriate environment variables. Links should open in Firefox automatically.

### Library Errors
The flake avoids LD_LIBRARY_PATH pollution to prevent glibc conflicts. If you encounter library issues, try the manual method above.

### XFCE Mime Helper Warnings
You may see warnings like:
```
(xfce4-mime-helper:xxxxx): Gtk-WARNING **: Could not load a pixbuf from icon theme.
```
These can be safely ignored - they don't affect Kiro's functionality.

### Snap-confine Errors
Messages about snap-confine can be ignored:
```
snap-confine has elevated permissions and is not confined but should be.
```
These are unrelated to Kiro and won't prevent it from working.

## Development Shell Features

Both development shells (`default` and `verbose`) provide:
- Pre-configured `kiro` alias with appropriate flags
- Firefox set as default browser
- xdg-utils for MIME handling
- Clear instructions on startup

## Project Structure

```
.
├── flake.nix       # Nix flake configuration
├── flake.lock      # Lock file for reproducible builds
└── README.md       # This file
```

## How It Works

The flake creates a wrapper script that:
1. Sets Firefox as the default browser
2. Adds xdg-utils to PATH for proper MIME handling
3. Runs Kiro with `--no-sandbox` to bypass namespace requirements
4. Avoids LD_LIBRARY_PATH pollution to prevent glibc conflicts

## Requirements

- **Operating System**: Linux x86_64
- **Nix**: Via nixstatic or similar (no root required)
- **Display**: X11 or Wayland session for GUI

## License

This wrapper is provided as-is. Kiro IDE itself is subject to its own license terms.

## Contributing

Feel free to submit issues or pull requests if you encounter problems or have improvements to suggest.

## Notes

- The `--impure` flag is required because Kiro needs access to system resources
- This solution is specifically designed for systems where creating new namespaces is restricted
- Performance should be identical to a normal Kiro installation