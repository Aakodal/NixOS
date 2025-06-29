{
  stdenv,
  pkgs,
  ...
}: stdenv.mkDerivation {
  pname = "sddm-chili";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "Aakodal";
    repo = "sddm-chili";
    rev = "a957dfc684817d9739aba90eeb2fde7215d7e4ba";
    hash = "sha256-bE78bhLFpqhHVryrvyOm4comYGuf3V59BhpLub8yJig=";
  };

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/sddm/themes
    cp -aR $src $out/share/sddm/themes/sddm-chili
    runHook postInstall
  '';
}
