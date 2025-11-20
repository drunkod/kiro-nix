{
  description = "Kiro with custom browser launcher";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/3de8f8d73e35724bf9abef41f1bdbedda1e14a31";
    nixpkgs-kiro.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-kiro }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      pkgs-kiro = import nixpkgs-kiro {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = "kiro-wrapped";
        version = pkgs-kiro.kiro.version or "unknown";

        dontUnpack = true;
        dontBuild = true;
        dontConfigure = true;

        nativeBuildInputs = with pkgs; [
          makeWrapper
        ];

        buildInputs = [
          pkgs-kiro.kiro    # kiro from pinned commit
          pkgs.chromium     # chromium from unstable
        ];

        installPhase = ''
          runHook preInstall

          mkdir -p $out/bin

          # Create custom xdg-open wrapper that launches Chromium
          cat > $out/bin/xdg-open <<'XDGEOF'
#!/bin/sh
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY no_proxy NO_PROXY
exec ${pkgs.chromium}/bin/chromium --new-window --no-sandbox "$@"
XDGEOF
          chmod +x $out/bin/xdg-open

          # Create kiro wrapper
          makeWrapper ${pkgs-kiro.kiro}/bin/kiro $out/bin/kiro \
            --prefix PATH : "$out/bin" \
            --set BROWSER "$out/bin/xdg-open" \
            --add-flags "--no-sandbox"

          runHook postInstall
        '';

        meta = with pkgs.lib; {
          description = "Kiro with custom browser support";
          license = licenses.unfree;
          platforms = [ "x86_64-linux" ];
          mainProgram = "kiro";
        };
      };

      apps.${system}.default = {
        type = "app";
        program = "${self.packages.${system}.default}/bin/kiro";
      };
    };
}