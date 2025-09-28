{
  assets,
  config,
  pkgs,
  ...
}: let
  rofi-colors = assets.colors.rofi;
in {
  home.file."${config.xdg.configHome}/rofi" = {
    source = ./config;
    recursive = true;
  };

  home.file."${config.xdg.configHome}/rofi/shared/colors.rasi".text = ''
    * {
      background:     ${rofi-colors.background};
      background-alt: ${rofi-colors.background-alt};
      foreground:     ${rofi-colors.foreground};
      selected:       ${rofi-colors.selected};
      active:         ${rofi-colors.active};
      urgent:         ${rofi-colors.urgent};
    }
  '';

  programs.rofi = {
    enable = true;
  };
}
