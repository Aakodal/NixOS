{
  pkgs,
  stdenv,
  ...
}: let
  theme-txt = ./files/theme.txt;
in stdenv.mkDerivation {
  pname = "aakodal-catppuccin-grub";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "catppuccin";
    repo = "grub";
    rev = "v1.0.0";
    hash = "sha256-/bSolCta8GCZ4lP0u5NVqYQ9Y3ZooYCNdTwORNvR7M0=";
  };

  installPhase = ''
    runHook preInstall

    mkdir -p $out/
    cp -r src/catppuccin-latte-grub-theme/* "$out/"
    cp ${theme-txt} "$out/theme.txt"

    runHook postInstall
  '';
}
