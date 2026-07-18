{
  config,
  lib,
  osConfig,
  ...
}: let
  hld = "hl.dsp";
  exec = "${hld}.exec_cmd";

  fileName = lib.custom.removeExt (builtins.baseNameOf __curPos.file);
in {
  home.file."${config.xdg.configHome}/hypr/hyprland/${fileName}.lua".text = ''
    hl.bind("SUPER + Return", ${exec}("alacritty"))
    hl.bind("SUPER + Q", ${hld}.window.close())

    hl.bind("SUPER + SHIFT + E", ${exec}("'/home/aakodal/.config/rofi/scripts/powermenu.sh'"))
    hl.bind("SUPER + SHIFT + P", ${exec}("'/home/aakodal/.config/rofi/scripts/powerprofiles.sh'"))
    hl.bind("SUPER + SHIFT + X", ${exec}("'/home/aakodal/.config/rofi/scripts/compose.sh'"))
    hl.bind("SUPER + SHIFT + B", ${exec}("'/home/aakodal/.config/rofi/scripts/keyhint.sh'"))
    
    hl.bind("SUPER + D", ${exec}("rofi -modi drun -show drun -theme '/home/aakodal/.config/rofi/rasi/launcher.rasi'"))

    hl.bind("SUPER + P", ${hld}.window.pseudo())
    hl.bind("SUPER + F", ${hld}.window.float({ action = "toggle" }))
    hl.bind("SUPER + SHIFT + F", ${hld}.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

    hl.bind("SUPER + L", ${exec}("hyprlock"))

    hl.bind("SUPER + N", ${exec}("nemo"))
    hl.bind("SUPER + T", ${exec}("zen"))
    hl.bind("Print", ${exec}("${lib.optionalString (osConfig.networking.hostName == "niflheim") "QT_SCALE_FACTOR=0.888888 "}flameshot gui --raw | wl-copy"))
    hl.bind("SUPER + C", ${exec}("hyprpicker -a"))

    hl.bind("XF86AudioMute", ${exec}("pamixer -t"))
    hl.bind("XF86AudioRaiseVolume", ${exec}("pamixer -i 5"), { locked = true, repeating = true })
    hl.bind("XF86AudioLowerVolume", ${exec}("pamixer -d 5"), { locked = true, repeating = true })

    hl.bind("XF86MonBrightnessUp", ${exec}("brightnessctl s 5%+"), { locked = true, repeating = true })
    hl.bind("XF86MonBrightnessDown", ${exec}("brightnessctl s 5%-"), { locked = true, repeating = true })

    hl.bind("SUPER + left", ${hld}.focus({ direction = "left" }))
    hl.bind("SUPER + right", ${hld}.focus({ direction = "right" }))
    hl.bind("SUPER + up", ${hld}.focus({ direction = "up" }))
    hl.bind("SUPER + down", ${hld}.focus({ direction = "down" }))
    hl.bind("SUPER + SHIFT + left", ${hld}.window.move({ direction = "left" }))
    hl.bind("SUPER + SHIFT + right", ${hld}.window.move({ direction = "right" }))
    hl.bind("SUPER + SHIFT + up", ${hld}.window.move({ direction = "up" }))
    hl.bind("SUPER + SHIFT + down", ${hld}.window.move({ direction = "down" }))

    hl.bind("SUPER + mouse_down", ${hld}.focus({ workspace = "e+1" }))
    hl.bind("SUPER + mouse_up", ${hld}.focus({ workspace = "e-1" }))

    local numpadKeys = {87, 88, 89, 83, 84, 85, 79, 80, 81, 90}
    for i = 1, 10 do
        local numkey = numpadKeys[i]
        hl.bind("SUPER + code:" .. numkey, ${hld}.focus({ workspace = i}))
        hl.bind("SUPER + SHIFT + code:" .. numkey, ${hld}.window.move({ workspace = i, follow = false }))
    end

    for j = 1, 10 do
        local key = j + 9
        hl.bind("SUPER + code:" .. key, ${hld}.focus({ workspace = j}))
        hl.bind("SUPER + SHIFT + code:" .. key, ${hld}.window.move({ workspace = j, follow = false }))
    end

    hl.bind("SUPER + mouse:272", ${hld}.window.drag(), { mouse = true })
    hl.bind("SUPER + mouse:273", ${hld}.window.resize(), { mouse = true })
  '';
}
