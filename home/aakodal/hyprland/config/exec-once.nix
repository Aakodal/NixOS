{
  assets,
  ...
}: {
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "wbg ${assets.wallpaper}"
      "systemctl --user start hyprpolkitagent"
      "hyprpanel"
      "hyprsunset -t 6000"
    ];
  };
}
