{
  assets,
  config,
  inputs,
  pkgs,
  ...
}: let
  clock-colors = assets.colors.clock;
  ewwii = inputs.ewwii.packages.${pkgs.stdenv.hostPlatform.system}.ewwii;
in {
  home.packages = with pkgs; [
    ewwii
  ];

  home.file = {
    "${config.xdg.configHome}/ewwii/ewwii.scss".text = ''
      * {
        all: unset;
      }

      .day {
        font-family: "Anurati";
        font-weight: bold;
        font-size: 10rem;

        color: ${clock-colors.day};
      }

      .calendar {
        font-family: "Astro Futuristic Font";
        font-weight: normal;
        font-size: 3rem;
        margin-top: -4rem;

        color: ${clock-colors.calendar};
      }

      .hour {
        font-family: "Prospec Extra Light";
        font-weight: normal;
        font-size: 140px;

        color: ${clock-colors.hour};
      }
    '';

    "${config.xdg.configHome}/ewwii/ewwii.rhai".source = ./ewwii.rhai;
  };
}
