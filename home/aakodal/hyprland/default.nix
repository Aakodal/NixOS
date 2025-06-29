{
  inputs,
  pkgs,
  lib,
  ...
}: let
  inherit (builtins) filter map toString;

  pkgsSystem = pkgs.stdenv.hostPlatform.system;
in {
  imports = [
    ./hyprpanel
    ./hyprlock.nix
    ./hypridle.nix
  ] ++ filter (lib.strings.hasSuffix ".nix") (
    map toString (filter (path: path != ./default.nix) (lib.filesystem.listFilesRecursive ./config))
  );

  home.packages = with pkgs; [
    hyprcursor
    hyprpicker
    hyprpolkitagent
    hyprprop
    hypridle
    hyprsunset
    wbg
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages.${pkgsSystem}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgsSystem}.xdg-desktop-portal-hyprland;
  };
}
