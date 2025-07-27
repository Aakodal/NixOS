{ assets }: {
  menus = {
    dashboard = {
      directories.enabled = false;

      stats.enable_gpu = false;
      # GPU stats come from gpustat package which only supports NVIDIA. Niflheim is an AMD computer. Me sad

      powermenu.avatar = {
        name = "Aakodal";
        image = builtins.toString assets.profilePicture;
      };

      shortcuts = {
        left = {
          shortcut1 = {
            command = "webcord";
            icon = "";
            tooltip = "Discord";
          };

          shortcut2 = {
            command = "zen";
            icon = "󰺕";
            tooltip = "Zen Browser";
          };

          shortcut3 = {
            command = "steam";
            icon = "";
            tooltip = "Steam";
          };

          shortcut4 = {
            command = "codium";
            icon = "";
            tooltip = "VSCodium";
          };
        };
        right = { # NB: shortcuts 2 and 4 don't exist on right layout (reserved)
          shortcut1 = {
            command = "nemo";
            icon = "";
            tooltip = "Explorateur (Nemo)";
          };

          shortcut3 = {
            command = "onlyoffice-desktopeditors";
            icon = "";
            tooltip = "ONLYOFFICE";
          };
        };
      };
    };

    clock = {
      time.military = true;
      weather.enabled = false;
    };
  };

  theme = {
    bar = {
      floating = true;
      transparent = true;
    };

    font.name = "Product Sans";
    
  };

  bar = {
    systray.customIcons = {
      chrome_status_icon_1 = {
        icon = "";
        color = assets.colors.hyprpanel.systrayIcons.discord;
      };
      steam = {
        icon = "󰓓";
        color = assets.colors.hyprpanel.systrayIcons.steam;
      };
      udiskie = {
        icon = "";
        color = assets.colors.hyprpanel.systrayIcons.udiskie;
      };
    };
    customModules.worldclock.tz = [ "Europe/Paris" ];
    clock.format = "%A %d %b %H:%M:%S";
    launcher.autoDetectIcon = true;
    network = {
      showWifiInfo = true;
      truncation_size = 12;
    };

    notifications = {
      show_total = true;
      hideCountWhenZero = true;
    };

    layouts = {
      "*" = {
        left = [ "dashboard" "windowtitle" ];
        middle = [ "workspaces" ];
        right = [ "volume" "network" "bluetooth" "battery" "systray" "clock" "notifications" ];
      };
    };

    workspaces.reverse_scroll = true;

    windowtitle = { # God forbid this damn bar has proper docs
      custom_title = false;
      class_name = false;
      title_map = [
        ["com.github.rafostar.clapper" ""]
        ["org.gnome.fileroller" ""]
        ["codium" ""]
        ["org.gnome.loupe" ""]
        ["onlyoffice" ""]
      ];
    };
  };
}
