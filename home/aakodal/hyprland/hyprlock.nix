# Inspired by/Copied from https://github.com/tonyho/hyprland-config/blob/master/hyprlock.conf
{
  assets,
  ...
}: {
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        disable_loading_bar = false;
        hide_cursor = true;
        no_fade_in = false;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          size = "250, 50";
          outline_thickness = 3;
          dots_size = 0.33; # Scale of input-field height, 0.2 - 0.8
          dots_spacing = 0.15; # Scale of dots' absolute size, 0.0 - 1.0
          dots_center = true;
          font_color = assets.colors.hyprlock.font_color;
          inner_color = assets.colors.hyprlock.inner_color;
          outer_color = assets.colors.hyprlock.outer_color;
          placeholder_text = "<i>Mot de passe...</i>"; # Text rendered in the input box when it's empty.
          font_size = 30;
          font_family = "Product Sans";
          hide_input = false;
          
          position = "0, 200";
          halign = "center";
          valign = "bottom";
        }
      ];

      # Date
      label = [
        {
          text = "cmd[update:18000000] echo \"<b><big> \"$(date +\"%A\" | tr \"[:lower:]\" \"[:upper:]\" | sed -E \"s/([a-zA-Z])([a-zA-Z])/\\1 \\2/g;s//\\1 \\2/g\")\" </big></b>\"";
          font_size = 40;
          font_family = "Anurati";

          position = "0, -100";
          halign = "center";
          valign = "top";
        }
        {
          text = "cmd[update:18000000] echo \"$(date +\"%-d %B %Y\" | sed -e 's/é/e/g' | tr \"[:lower:]\" \"[:upper:]\")\"";
          font_size = 28;
          font_family = "Astro Futuristic Font";

          position = "0, -150";
          halign = "center";
          valign = "top";
        }
        {
          # FSR putting font in font_family doesn't work as intended
          text = "cmd[update:1000] echo \"<span face='Prospec Extra Light'>$(date +\"%H:%M:%S\")</span>\"";
          font_size = 94;

          position = "0, 0";
          halign = "center";
          valign = "center";
        }
        {
          text = "   $DESC";
          font_size = 34;
          font_family = "Product Sans";

          position = "0, 100";
          halign = "center";
          valign = "bottom";
        }
        {
          text = "cmd[update:60000] echo \"<b> \"$(uptime | awk -F'( |,|:)+' '{d=h=m=0; if ($7==\"min\") m=$6; else {if ($6~/jour/) {d=$6;h=$7;m=$8} else {h=$6;m=$7}}; dt=ht=mt=\"\"; if (d>1) dt=\"jours,\"; else dt=\"jour,\"; if (h>1) ht=\"heures,\"; else ht=\"heure,\"; if (m>1) mt=\"minutes\"; else mt=\"minute\"} {print d+0,dt,h+0,ht,m+0,mt}')\" </b>\"";
          font_size = "24";
          font_family = "Product Sans";
          position = "0, 0";
          halign = "right";
          valign = "bottom";
        }
      ];
    };
  };
}
