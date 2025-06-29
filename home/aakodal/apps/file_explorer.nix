{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    nemo-with-extensions
    kdePackages.ark
  ];

  dconf.settings = {
    "org/cinnamon/desktop/applications/terminal".exec = "alacritty";
  };
}
