{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    winboat
  ];
}
