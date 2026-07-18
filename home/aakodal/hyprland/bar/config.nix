{
  assets,
  getIcon,
  lib,
  ...
}: let
  colors = assets.colors.bar;
  apps = colors.systrayIcons;
in {
  bar = {
    background-opacity = 0;
    button-rounding = "full";
    button-variant = "basic";
    colors = colors.barColors;
    dropdown-freeze-label = false;

    layout = [
      {
        center = [ "hyprland-workspaces" ];
        left = [
          "dashboard"
          "window-title"
        ];
        monitor = "*";
        right = [
          "volume"
          "network"
          "bluetooth"
          "battery"
          "systray"
          "clock"
          "notifications"
        ];
        show = true;
      }
    ];

  };


  general = {
    font-sans = assets.fonts.sans;
    font-mono = assets.fonts.mono;
  };

  modules = lib.recursiveUpdate { # Mandatory in order to deeply merge sets
    clock = {
      dropdown-show-seconds = true;
      format = "%H:%M:%S";
      icon-name = getIcon "clock";
    };

    dashboard = {
      border-show = true;
      dropdown-lock-command = "hyprlock";
    };

    hyprland-workspaces = {
      container-bg-color = "bg-base";
    };

    notifications = {
      icon-dnd = getIcon "notifications-dnd";
      icon-name = getIcon "notifications";
      icon-unread = getIcon "notifications-unread";
    };

    systray = {
      overrides = [
        {
          icon = getIcon "steam";
          name = "steam";
          color = apps.steam;
        }
        {
          icon = getIcon "discord";
          name = "WebCord_status_icon_1";
          color = apps.discord;
        }
        {
          icon = getIcon "udiskie";
          name = "udiskie";
          color = apps.udiskie;
        }
        {
          icon = getIcon "vlc";
          name = "vlc";
          color = apps.vlc;
        }
      ];
    };

    weather = {
      location = "Clermont-Ferrand";
      time-format = "24h";
    };

    window-title = {
      icon-mappings = {
        Alacritty = getIcon "terminal";
        codium = getIcon "codium";
        "com.github.rafostar.clapper" = getIcon "clapper";
        ONLYOFFICE = getIcon "onlyoffice";
        "org.gnome.FileRoller" = getIcon "fileroller";
        "org.gnome.Loupe" = getIcon "loupe";
      };
    };
  } colors.modules;

  osd = {
    enabled = true;

    position = "bottom-right";
    border = false;
    margin = 15;
  };

  styling = {
    palette = colors.palette;
    rounding = "md";
  };

  wallpaper.engine-enabled = false;
}
