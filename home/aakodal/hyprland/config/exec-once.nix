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
      "nwg-wrapper -s month.sh -r 1000 --alignment start --position center -j center -c date.css -mt 150"
      "nwg-wrapper -s day.sh -r 200 --alignment start --position center -j center -c date.css -mt 50"
    ];
  };
}
