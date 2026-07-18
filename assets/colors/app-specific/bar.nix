{ base }: {
  barColors = {
    bg = "bg-base";
    border-color = "bg-base";
    button-group-background = "bg-bage";
    button-group-border-color = base.black;
  };

  systrayIcons = {
    discord = base.anthracite;
    steam = base.anthracite;
    udiskie = base.anthracite;
    vlc = base.anthracite;
  };

  modules = let
    sharedColors = {
      button-bg-color = "bg-base";
      icon-bg-color = "bg-base";
    };
  in {
    battery = {
      icon-color = base.orange;
      label-color = base.orange;
    } // sharedColors;

    bluetooth = {
      icon-color = base.sky;
      label-color = base.sky;
    } // sharedColors;

    clock = {
      icon-color = base.magenta;
      label-color = base.magenta;
    } // sharedColors;

    dashboard = {
      border-color = base.blue;
      icon-color = base.blue;
    } // sharedColors;

    hyprland-workspaces = {
      container-bg-color = "bg-base";
    } // sharedColors;

    network = {
      icon-color = base.cyan;
      label-color = base.cyan;
    } // sharedColors;

    notifications = {
      icon-color = base.lavender;
      label-color = base.lavender;
    } // sharedColors;

    systray = sharedColors;

    volume = {
      icon-color = base.brightRed;
      label-color = base.brightRed;
    } // sharedColors;

    window-title = sharedColors;
  };

  palette = {
    bg = base.ghostWhite;
    surface = base.ghostWhite;
    elevated = base.white;
    
    fg = base.black;
    fg-muted = base.brightBlack;
    primary = base.brightRed;

    red = base.red;
    yellow = base.yellow;
    green = base.green;
    blue = base.blue;
  };
}
