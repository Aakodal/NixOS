{
  pkgs,
  ...
}: let
  orchis = pkgs.orchis-theme.override {
    border-radius = 5;
    tweaks = [ "dracula" ]; # less vibrant color to match DE
  };
in  {
  home = {
    packages = with pkgs; [
      glib
      orchis
      dconf
    ];

    sessionVariables = {
      GTK_THEME = "Orchis-Red-Light-Dracula";
      GTK_USE_PORTAL = "1";
    };
  };

  gtk = {
    enable = true;

    theme = {
      name = "Orchis-Red-Light-Dracula";
      package = orchis;
    };

    font = {
      name = "Product Sans";
      size = 10;
    };
  };
}
