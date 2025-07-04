{
  inputs,
  assets,
  ...
}: {
  programs.hyprpanel = {
    enable = true;
    systemd.enable = false;

    # hyprland.enable = false
    # already added in hyprland config

    settings = import ./config.nix { inherit assets; } // assets.colors.hyprpanel;
  };
}
