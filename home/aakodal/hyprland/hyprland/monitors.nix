{
  config,
  osConfig,
  ...
}: let
  monitors = {
    shared = [
      ''{ output = "", mode = "preferred", position = "auto", scale = 1 }''
    ];


    helheim = [
      ''{ output = "eDP-1", mode = "1366x768@60", position = "0x0", scale = 1 }''
    ];

    niflheim = [
      ''{ output = "eDP-1", mode = "2880x1620@120", position = "0x0", scale = 1.125 }''
    ];
  };
in {
  home.file."${config.xdg.configHome}/hypr/hyprland/monitors.lua".text = builtins.concatStringsSep "\n" (
    map (x: "hl.monitor(${x})") (
      monitors.${osConfig.networking.hostName} ++ monitors.shared
    )
  );
}
