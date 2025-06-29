{
  osConfig,
  ...
}: let
  monitors = {
    helheim = [ "eDP-1, 1366x768@60, 0x0, 1" ];
    niflheim = [ "eDP-1, 2880x1620@120, 0x0, 1.125" ];
  };
in {
  wayland.windowManager.hyprland.settings = {
    monitor = monitors.${osConfig.networking.hostName} ++ [ ", preferred, auto, 1" ];
  };
}
