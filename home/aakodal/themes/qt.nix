{
  pkgs,
  ...
}: let
  theme-pkg = pkgs.orchis-kde;
  theme-name = "Orchis";
in  {
  qt = {
    enable = true;

    style = {
      package = theme-pkg;
      name = "kvantum";
    };
  };

  home = {
    packages = with pkgs; [
      qt5.qttools
      qt6Packages.qtstyleplugin-kvantum
      libsForQt5.qtstyleplugin-kvantum
      libsForQt5.qt5ct
      kdePackages.breeze-icons
    ];

    # sessionVariables = { # Already defined in wayland env file
    #   QT_STYLE_OVERRIDE = "kvantum";
    #   QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    #   QT_QPA_PLATFORM = "wayland;xcb";
    #   QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    #   DISABLE_QT5_COMPAT = "0";
    # };
  };

  xdg.configFile = {
    "kdeglobals".source = "${theme-pkg}/share/color-schemes/${theme-name}.colors";

    "Kvantum/${theme-name}" = {
      source = "${theme-pkg}/share/Kvantum/Orchis";
      recursive = true;
    };

    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=${theme-name}
    '';
  };
}
