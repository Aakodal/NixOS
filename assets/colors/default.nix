let
  base = import ./base.nix;
in {
  base = base;

  alacritty = import ./app-specific/alacritty.nix { inherit base; };
  clock = import ./app-specific/clock.nix { inherit base; };
  hyprlock = import ./app-specific/hyprlock.nix { inherit base; };
  hyprpanel = import ./app-specific/hyprpanel.nix { inherit base; };
  macchina = import ./app-specific/macchina.nix { inherit base; };
  rofi = import ./app-specific/rofi.nix { inherit base; };
}
