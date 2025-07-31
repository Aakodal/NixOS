{
  osConfig,
  ...
}: {
  wayland.windowManager.hyprland.settings = {
    input = {
      follow_mouse = true;
      kb_layout = "fr";
      kb_variant = "oss";
      kb_options = "compose:menu";
      numlock_by_default = if osConfig.networking.hostName == "helheim" then false else true;
      touchpad.natural_scroll = false;

      sensitivity = 0;
    };
  };
}
