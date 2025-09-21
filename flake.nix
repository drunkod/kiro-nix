{
  description = "Kiro IDE wrapped for non-root environments";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        
        # Create a wrapper script for Kiro
        kiro-wrapped = pkgs.runCommand "kiro-wrapped" {
          nativeBuildInputs = [ pkgs.makeWrapper ];
          buildInputs = with pkgs; [ 
            kiro 
            firefox
            xdg-utils
          ];
          meta = pkgs.kiro.meta;
        } ''
          mkdir -p $out/bin

          # Create a wrapper script that doesn't pollute LD_LIBRARY_PATH globally
          cat > $out/bin/kiro << 'EOF'
          #!/bin/sh
          export BROWSER="${pkgs.firefox}/bin/firefox"
          export DEFAULT_BROWSER="${pkgs.firefox}/bin/firefox"
          export PATH="${pkgs.lib.makeBinPath [ pkgs.xdg-utils pkgs.firefox ]}:$PATH"
          
          # Run kiro directly without modifying LD_LIBRARY_PATH
          exec ${pkgs.kiro}/bin/kiro --no-sandbox "$@"
          EOF
          
          chmod +x $out/bin/kiro
        '';

        # Create a verbose wrapper
        kiro-wrapped-verbose = pkgs.runCommand "kiro-wrapped-verbose" {
          nativeBuildInputs = [ pkgs.makeWrapper ];
          buildInputs = with pkgs; [ 
            kiro 
            firefox
            xdg-utils
          ];
          meta = pkgs.kiro.meta;
        } ''
          mkdir -p $out/bin

          # Create a wrapper script with verbose flag
          cat > $out/bin/kiro << 'EOF'
          #!/bin/sh
          export BROWSER="${pkgs.firefox}/bin/firefox"
          export DEFAULT_BROWSER="${pkgs.firefox}/bin/firefox"
          export PATH="${pkgs.lib.makeBinPath [ pkgs.xdg-utils pkgs.firefox ]}:$PATH"
          
          # Run kiro with verbose output
          exec ${pkgs.kiro}/bin/kiro --no-sandbox --verbose "$@"
          EOF
          
          chmod +x $out/bin/kiro
        '';

      in
      {
        packages = {
          default = kiro-wrapped;
          verbose = kiro-wrapped-verbose;
        };

        # For 'nix run'
        apps = {
          default = {
            type = "app";
            program = "${kiro-wrapped}/bin/kiro";
          };
          verbose = {
            type = "app";
            program = "${kiro-wrapped-verbose}/bin/kiro";
          };
        };

        # Development shells
        devShells = {
          # Default shell (without verbose)
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              kiro
              firefox
              xdg-utils
            ];
            
            shellHook = ''
              export BROWSER="${pkgs.firefox}/bin/firefox"
              export DEFAULT_BROWSER="${pkgs.firefox}/bin/firefox"
              alias kiro="${pkgs.kiro}/bin/kiro --no-sandbox"
              echo "Kiro development environment ready (normal mode)"
              echo "Run 'kiro' to start (alias configured with --no-sandbox)"
              echo ""
              echo "For verbose mode, use: nix develop .#verbose"
            '';
          };

          # Verbose shell
          verbose = pkgs.mkShell {
            buildInputs = with pkgs; [
              kiro
              firefox
              xdg-utils
            ];
            
            shellHook = ''
              export BROWSER="${pkgs.firefox}/bin/firefox"
              export DEFAULT_BROWSER="${pkgs.firefox}/bin/firefox"
              alias kiro="${pkgs.kiro}/bin/kiro --no-sandbox --verbose"
              echo "========================================="
              echo "Kiro development environment ready (VERBOSE mode)"
              echo "========================================="
              echo "Run 'kiro' to start (alias configured with --no-sandbox --verbose)"
              echo ""
              echo "For normal mode, use: nix develop .#default"
            '';
          };
        };
      }
    );
}