{
  config,
  inputs,
  pkgs,
  lib,
  ...
}: let
  inherit (builtins) filter map toString;

  pkgsSystem = pkgs.stdenv.hostPlatform.system;
in {
  imports = [
    ./clock
    ./hyprpanel
    ./hyprlock.nix
    ./hypridle.nix
  ] ++ filter (lib.strings.hasSuffix ".nix") (
    map toString (filter (path: path != ./default.nix) (lib.filesystem.listFilesRecursive ./hyprland))
  );

  home.packages = with pkgs; [
    hyprcursor
    hyprpicker
    hyprpolkitagent
    hyprprop
    hyprland-qt-support
    hyprland-qtutils
    hypridle
    hyprsunset
    wbg
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    configType = "lua";
    systemd.enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages.${pkgsSystem}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgsSystem}.xdg-desktop-portal-hyprland;
  };

  #home.file."${config.xdg.configHome}/hypr/hyprland.lua".text
  wayland.windowManager.hyprland.extraConfig = builtins.concatStringsSep "\n" (
    map (x: "require(\"hyprland/${x}\")") (
      map (y: builtins.substring 0 ((builtins.stringLength y) - 4) y) (map builtins.baseNameOf (
        filter (path: path != ./default.nix) (lib.filesystem.listFilesRecursive ./hyprland)
      ))
    )
  );

  home.file."${config.xdg.configHome}/hypr/hyprland" = {
    source = ./hyprland/lua;
    recursive = true;
  };
}
