{
  lib,
  stdenv,
  pkgs,
  ...
}: stdenv.mkDerivation {
  pname = "orchis-kde";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Orchis-kde";
    rev = "b2a96919eee40264e79db402b915f926436100ad";
    hash = "sha256-mO1AVrnXNdg3Rftj0cQWef/RrBgSDy5kaMHagwKywEo=";
  };

  postPatch = ''
    patchShebangs install.sh

    substituteInPlace install.sh \
      --replace '$HOME/.local' $out \
      --replace '$HOME/.config' $out/share \
      --replace '/usr' $out
    
    substituteInPlace sddm/6.0/Orchis/Main.qml \
      --replace '/usr' $out
  '';

  installPhase = ''
    runHook preInstall

    name= HOME="$TMPDIR" ./install.sh --dest $out/share/themes

    mkdir -p $out/share/sddm/themes
    cp -a sddm/6.0/Orchis $out/share/sddm/themes

    runHook postInstall
  '';
}
