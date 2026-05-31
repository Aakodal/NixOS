{
  config,
  osConfig,
  ...
}: let
  host = osConfig.networking.hostName;

  customFactors = {
    helheim = {
      cursor = "24";
      scale = "1";
    };

    niflheim = {
      cursor = "32";
      scale = "1.125";
    };
  };
in {
  home.file."${config.xdg.configHome}/hypr/hyprland/environment.lua".text = ''
    hl.env("XCURSOR_SIZE", "${customFactors.${host}.cursor}")

    hl.env("QT_SCALE_FACTOR", "1")
    hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
    hl.env("ELM_SCALE", "${customFactors.${host}.scale}")
    hl.env("GDK_SCALE", "${customFactors.${host}.scale}")
  '';
}
