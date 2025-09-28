{
  stdenv,
  pkgs,
  ...
}: stdenv.mkDerivation {
  pname = "aptos";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "ironveil";
    repo = "ttf-aptos";
    rev = "64f511374b173d0d0618455e57d1e7aacd910818";
    hash = "sha256-pQuSs9l2aFUjRlhr6Pa22upVyzN2Cv/36AiwAuhtuiY=";
  };

  installPhase = ''
    runHook preInstall
    install -Dm444 *.ttf -t $out/share/fonts/truetype
    runHook postInstall
  '';
}
