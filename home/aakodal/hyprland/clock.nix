{
  assets,
  config,
  pkgs,
  ...
}: let
  clock-colors = assets.colors.clock;
in {
  home.packages = with pkgs; [
    nwg-wrapper
  ];

  home.file = {
    "${config.xdg.configHome}/nwg-wrapper/month.sh" = {
      executable = true;
      text = ''
        #!/usr/bin/env bash
        echo "<span size='30000' foreground='${clock-colors.month}' face='Astro Futuristic Font'>$(date +'%-d %B %Y' | sed -E 's/é/e/g' | tr '[:lower:]' '[:upper:]')</span>"
      '';
    };

    "${config.xdg.configHome}/nwg-wrapper/day.sh" = {
      executable = true;
      text = ''
        #!/usr/bin/env bash
        echo "<b><span face='Anurati' foreground='${clock-colors.weekDay}' size='100000'>$(date +'%A' | tr '[:lower:]' '[:upper:]' | sed -E 's/([a-zA-Z])([a-zA-Z])/\1 \2/g;s//\1 \2/g')</span></b>"
        echo ""
        echo ""
        echo ""
        echo ""
        echo ""
        echo "<span face='Prospec Extra Light' foreground='${clock-colors.hour}' size='100000'>$(date +'%H:%M:%S')</span>"
      '';
    };

    "${config.xdg.configHome}/nwg-wrapper/date.css".text = ''
      window {
        background-color: rgba (0, 0, 0, 0.0);
      }
    '';
  };
}
