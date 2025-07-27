{
  pkgs,
  ...
}: {
  qt = {
    enable = true;

    style = {
      package = pkgs.qogir-kde;
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
    "kdeglobals".source = "${pkgs.qogir-kde}/share/color-schemes/QogirLight.colors";
    "Kvantum/Qogir-light/Qogir-light.kvconfig".source = builtins.fetchurl {
      url = "https://raw.githubusercontent.com/vinceliuice/Qogir-kde/master/Kvantum/Qogir-light/Qogir-light.kvconfig";
      sha256 = "042dfij55dzmmzsgv2mj123a148kdxcxs6w48b0i352q45aaxjg1";
    };

    # "Kvantum/Qogir-light/Qogir-light.svg".source = builtins.fetchurl {
    #   url = "https://raw.githubusercontent.com/vinceliuice/Qogir-kde/master/Kvantum/Qogir-light/Qogir-light.svg";
    #   sha256 = "1p7i5fmq519a5as1zh90gfk2jij0a5b9fxh019vswsshmyp87zrs";
    # };

    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=Qogir-light
    '';
  };
}
