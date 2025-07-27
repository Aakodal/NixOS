{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    nemo-with-extensions
    nemo-fileroller
    file-roller
  ];

  dconf.settings = {
    "org/cinnamon/desktop/applications/terminal".exec = "alacritty";
  };
}
