{
  assets,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
  ];

  programs.satty = {
    enable = true;
    settings = {
      general = {
        fullscreen = false;
        early-exit = true;
        copy-command = "${pkgs.wl-clipboard}/bin/wl-copy";
        disable-notifications = true;
        actions-on-enter = [ "save-to-clipboard" ];
        actions-on-escape = [ "exit" ];
      };

      color-palette.palette = assets.colors.satty.palette;
    };
  };
}
