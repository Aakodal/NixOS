{
  assets,
  config,
  lib,
  ...
}: let
  exec = "hl.exec_cmd";

  fileName = lib.custom.removeExt (builtins.baseNameOf __curPos.file);
in {
  home.file."${config.xdg.configHome}/hypr/hyprland/${fileName}.lua".text = ''
    hl.on("hyprland.start", function()
        ${exec}("wbg ${assets.wallpaper}")
        ${exec}("systemctl --user start hyprpolkitagent")
        ${exec}("hyprsunset -t 6000")
        ${exec}("ewwii open clock")
    end)
  '';
}
