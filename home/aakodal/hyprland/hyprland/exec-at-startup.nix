{
  assets,
  config,
  ...
}: let
  exec = "hl.exec_cmd";
in {
  home.file."${config.xdg.configHome}/hypr/hyprland/exec-at-startup.lua".text = ''
    hl.on("hyprland.start", function()
        ${exec}("wbg ${assets.wallpaper}")
        ${exec}("systemctl --user start hyprpolkitagent")
        ${exec}("hyprpanel")
        ${exec}("hyprsunset -t 6000")
        ${exec}("ewwii open clock")
    end)
  '';
}
