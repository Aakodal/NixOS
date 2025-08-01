{
  assets,
  lib,
  osConfig,
  pkgs,
  ...
}: {
  imports = [
    ./apps
    ./hyprland
    ./packages
    ./themes
    ./xcompose
    ./xdg.nix
  ];

  home = {
    username = "aakodal";
    homeDirectory = "/home/aakodal";
    
    file.".face".source = assets.profilePicture;
    file.".face.icon".source = assets.profilePicture;

    sessionVariables = lib.mkIf (osConfig.networking.hostName == "niflheim") {
      QT_SCALE_FACTOR = 1;
      ELM_SCALE = 1.125;
      GDK_SCALE = 1.125;
    }; # helpful for scaling apps

    stateVersion = "25.11";
  };

  programs.home-manager.enable = true;

  services.udiskie = {
    enable = true;
    settings.program_options.file_manager = "${pkgs.nemo-with-extensions}/bin/nemo";
  };
}
