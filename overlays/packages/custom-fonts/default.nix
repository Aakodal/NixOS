{
  lib,
  stdenv,
  pkgs,
  ...
}: stdenv.mkDerivation {
  pname = "custom-fonts";
  version = "1.0.0";

  src = lib.fileset.toSource {
    root = ./.;
    fileset = ./fonts;
  };

  installPhase = ''
    runHook preInstall
    install -Dm444 fonts/*.otf -t $out/share/fonts/opentype
    install -Dm444 fonts/*.ttf -t $out/share/fonts/truetype
    runHook postInstall
  '';
}
