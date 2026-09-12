{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    protonup-qt
    xdotool
    xxd
    xwininfo
    yad
  ];
}
