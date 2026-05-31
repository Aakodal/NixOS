{
  config,
  osConfig,
  ...
}: {
  home.file."${config.xdg.configHome}/hypr/hyprland/input.lua".text = ''
    hl.config({
        input = {
            follow_mouse = true,
            sensitivity = 0,

            kb_layout = "fr",
            kb_variant = "oss",
            kb_options = "compose:menu",

            numlock_by_default = ${if osConfig.networking.hostName == "helheim" then "false" else "true"},

            touchpad = {
                disable_while_typing = true,
                natural_scroll = false,
            },
        },
    })
  '';
}
