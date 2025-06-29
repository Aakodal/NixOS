{
  pkgs,
  inputs,
  ...
}: let
  qt5 = pkgs.libsForQt5.qt5;
in  {
  security.pam.services = {
    login.enableGnomeKeyring = true;

    sddm = {
      gnupg.enable = true;
      enableGnomeKeyring = true;
    };
  };

  environment.systemPackages = with pkgs; [
    sddm-chili
    qt5.qtquickcontrols
    qt5.qtgraphicaleffects
  ];

  services.displayManager.sddm = {
    enable = true;
    theme = "sddm-chili";
  };
  services.displayManager.sessionPackages = [ inputs.hyprland.packages.${pkgs.system}.default ];
}
