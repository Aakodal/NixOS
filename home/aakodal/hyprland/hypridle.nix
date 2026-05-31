_: let
  isFullscreen = "hyprctl clients | grep -c 'fullscreen: 2'";
  checkNotFullscreen = "[ $(${isFullscreen}) -eq 0 ]";
in {
  services.hypridle = {
    enable = true;
    
    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock";
        before_sleep_cmd = "loginctl lock-session";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };

      listener = [
        {
          timeout = 150;
          on-timeout = "${checkNotFullscreen} && brightnessctl -s set 10";
          on-resume = "brightnessctl -r";
        }
        {
          timeout = 150;
          on-timeout = "${checkNotFullscreen} && brightnessctl -sd rgb:kbd_backlight set 0";
          on-resume = "brightnessctl -rd rgb:kbd_backlight";
        }
        {
          timeout = 300;
          on-timeout = "${checkNotFullscreen} && loginctl lock-session && sleep 1 && hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on && brightnessctl -r";
        }
        {
          timeout = 1800;
          on-timeout = "${checkNotFullscreen} && systemctl suspend";
        }
      ];
    };
  };
}
