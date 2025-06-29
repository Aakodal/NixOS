{
  inputs,
  assets,
  ...
}: {
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];

  programs.hyprpanel = {
    enable = true;
    systemd.enable = false;

    # hyprland.enable = false
    # already added in hyprland config

    settings = import ./config.nix { inherit assets; };
    override = assets.colors.hyprpanel;
  };
}
