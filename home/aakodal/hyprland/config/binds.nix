_: {
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    bind = [
      # System
      "$mod, Return, exec, alacritty"
      "$mod, Q, killactive"
      "$mod SHIFT, E, exec, '/home/aakodal/.config/rofi/scripts/powermenu.sh'"
      "$mod SHIFT, P, exec, '/home/aakodal/.config/rofi/scripts/powerprofiles.sh'"
      "$mod, P, pseudo, "
      "$mod, J, togglesplit, "
      "$mod, F, togglefloating, "
      "$mod, D, exec, rofi -modi drun -show drun -theme '/home/aakodal/.config/rofi/rasi/launcher.rasi'"
      "$mod SHIFT, F, fullscreen"
      "$mod, L, exec, hyprlock"

      # Apps
      "$mod, N, exec, nemo"
      "$mod, T, exec, zen"
      ", Print, exec, bash -c \"dim=\\\"$(slurp)\\\"; if [ -z \\\"\\\$dim\\\" ]; then exit 1; else grim -g \\\"\\\$dim\\\" -t png - | wl-copy && notify-send \\\"Capture d'écran\\\" \\\"Capture d'écran sauvegardée dans le presse-papiers.\\\"; fi\""
      "$mod, C, exec, hyprpicker -a"

      # Multimedia
      ", XF86AudioMute, exec, pamixer -t"
      ", XF86AudioRaiseVolume, exec, pamixer -i 5"
      ", XF86AudioLowerVolume, exec, pamixer -d 5"

      # Brightness
      ", XF86MonBrightnessUp, exec, brightnessctl s 5%+"
      ", XF86MonBrightnessDown, exec, brightnessctl s 5%-"

      # Windows 
      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"
      "$mod SHIFT, left, movewindow, l"
      "$mod SHIFT, right, movewindow, r"
      "$mod SHIFT, up, movewindow, u"
      "$mod SHIFT, down, movewindow, d"

      # Workspaces 
      "$mod, mouse_down, workspace, e+1"
      "$mod, mouse_up, workspace, e-1"
      "$mod NUM_LOCK, 87, workspace, 1"
      "$mod NUM_LOCK, 88, workspace, 2"
      "$mod NUM_LOCK, 89, workspace, 3"
      "$mod NUM_LOCK, 83, workspace, 4"
      "$mod NUM_LOCK, 84, workspace, 5"
      "$mod NUM_LOCK, 85, workspace, 6"
      "$mod NUM_LOCK, 79, workspace, 7"
      "$mod NUM_LOCK, 80, workspace, 8"
      "$mod NUM_LOCK, 81, workspace, 9"
      "$mod NUM_LOCK, 90, workspace, 10"
      "$mod NUM_LOCK SHIFT, 87, movetoworkspacesilent, 1"
      "$mod NUM_LOCK SHIFT, 88, movetoworkspacesilent, 2"
      "$mod NUM_LOCK SHIFT, 89, movetoworkspacesilent, 3"
      "$mod NUM_LOCK SHIFT, 83, movetoworkspacesilent, 4"
      "$mod NUM_LOCK SHIFT, 84, movetoworkspacesilent, 5"
      "$mod NUM_LOCK SHIFT, 85, movetoworkspacesilent, 6"
      "$mod NUM_LOCK SHIFT, 79, movetoworkspacesilent, 7"
      "$mod NUM_LOCK SHIFT, 80, movetoworkspacesilent, 8"
      "$mod NUM_LOCK SHIFT, 81, movetoworkspacesilent, 9"
      "$mod NUM_LOCK SHIFT, 90, movetoworkspacesilent, 10"
    ] ++ (
      builtins.concatLists (builtins.genList (
        x: let 
          ws = let
            c = (x + 1) / 11;
          in 
            builtins.toString (x + 10 - (c * 10));
        in [
          "$mod, ${ws}, workspace, ${toString (x + 1)}"
          "$mod SHIFT, ${ws}, movetoworkspacesilent, ${toString (x + 1)}"
        ]
      ) 10)
    );

    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
  };
}
