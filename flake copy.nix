{
  description = "Kiro IDE wrapped for non-root environments";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        # pkgs = nixpkgs.legacyPackages.${system};
       pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };        
        # Create a wrapper script for Kiro
        kiro-wrapped = pkgs.runCommand "kiro-wrapped" {
          nativeBuildInputs = [ pkgs.makeWrapper ];
          buildInputs = [ pkgs.kiro ];
          meta = pkgs.kiro.meta;
        } ''
          mkdir -p $out/bin

          # Wrap the original Kiro executable.
          # 1. Add --no-sandbox because SUID is not available.
          # 2. Prefix the PATH with xdg-utils so "Open in Browser" works.
          makeWrapper ${pkgs.kiro}/bin/kiro $out/bin/kiro \
            --add-flags "--no-sandbox" \
            --prefix PATH : ${pkgs.lib.makeBinPath [ pkgs.xdg-utils ]}
        '';

      in
      {
        packages.default = kiro-wrapped;

        # For 'nix run'
        apps.default = {
          type = "app";
          program = "${kiro-wrapped}/bin/kiro";
        };
      }
    );
}