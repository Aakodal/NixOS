{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    wineWowPackages.waylandFull
    winetricks
    mono
  ];
}
