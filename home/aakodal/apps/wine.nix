{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    wineWowPackages.stable
    winetricks
    mono
  ];
}
