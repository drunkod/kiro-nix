i try sign in to kiro ide
from nixctatic
use this flake.nix
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


https://accounts.google.com/signin/oauth/id?authuser=0&part=AJi8hAMonM367UOVGk0Y38HmwqFSnxORjx9vnezbipfbxsGHcmGpE0YN-ZIPuU3xbeV4raolWvP5jRDfAqkYUhVBPTVB5v7EW4bJOL2Xh8zbVqLW1JSHREv7rf9eiqGMbsYqkeH7TQ7tdXIQQK-mQitCBZikCJzdAVcbOvZ3ggqljKRxu2jUg851Visay-BZcmSBfd_Q3DF-GUw_wWEf1fo8kFeekMk9JobS5G9dS04J3RagB1KUPjtSs4Kg2N8PHS9eZyKTMHbdKZf1we7ubTIOHKiuiYxmcf7bX1ahy0cMXeejF5nWkcpqcRuxEDJWOVJtoM1DBTAiUz5lytR8iA4qfc98vkOiOnmlxIYyGBCzxlnLnXyDCJcm-g9F5w48J00UJniiHFczKALmaqRi2xYrG4g-mMhqxFAcydHBo6LZegETsigCV75AR9VE57X8NuwznRVdjFrKRuSJQ7DpKWOHEV-AhmhFa9HL1d5feyrQr7Z3lPxv5NWAA0yMI9SI6453yjOwKOh8KGJoOwKCw4B4vyn6wd904JCi8Qjx2Vo6fwzDDGf6cGeL3awE2q6VCiEEKbPD9pM20iwur1Q65JGpN9uN2sQHlme1J2oQjNhqWirsW1I7hePu1rIzR_bNe9pqnL16Hky2DoM110Zp81pXR5yL1IEIDCGseXNGVwa3c6qYRBYH2Sb-3Xri_vNKGQcoLT-XVZGssHhuF0it_jJvilYPfU4YXhP9Epfs5x5ebV-fRYnghTA&flowName=GeneralOAuthFlow&as=S-518574579%3A1763627838563518&client_id=183617306620-gqedod9q1su19ghqs84m1tje4lp761ks.apps.googleusercontent.com&rapt=AEjHL4OzUXmN1E3affhhTNiD_qSgGN8nARpn4eWngu09LASIeizSF4V6Hp21cPtuXSLFzm5ebmgpSUCb46IqR9DPIm_TmnZ_uhKUvLNHkyvJK9WXcnErZak&requestPath=%2Fsignin%2Foauth%2Fconsent#

We will take you to your default web browser to sign in and bring you back when it's complete...

how open url in kiro
when this url open in default xdgopen in lubuntu system