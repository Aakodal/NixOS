{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    wineWow64Packages.waylandFull
    winetricks
    mono
    protontricks
  ];
}
