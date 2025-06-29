_: {
  wayland.windowManager.hyprland.settings = {
    animations = {
      enabled = true;

      bezier = "overshot, 0.13, 0.99, 0.29, 1.1";
      animation = [
        "border, 1, 10, default"
        "fade, 1, 10, default"
        "windows, 1, 4, overshot, slide"
        "workspaces, 1, 6, overshot, slide"
      ];
    };
  };
}
