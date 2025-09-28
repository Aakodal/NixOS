{
  pkgs,
  inputs,
  ...
}: let
  qt5 = pkgs.libsForQt5.qt5;

  sddm-theme = inputs.silentSDDM.packages.${pkgs.system}.default.override {
    theme = "default";
  };
in  {
  security.pam.services = {
    login.enableGnomeKeyring = true;

    sddm = {
      gnupg.enable = true;
      enableGnomeKeyring = true;
    };
  };

  environment.systemPackages = with pkgs; [
    sddm-theme
    qt5.qtquickcontrols
    qt5.qtgraphicaleffects
  ];

  services.displayManager.sddm = {
    enable = true;
    package = pkgs.kdePackages.sddm;
    theme = sddm-theme.pname;

    extraPackages = sddm-theme.propagatedBuildInputs;
    settings = {
      General = {
        GreeterEnvironment = "QML2_IMPORT_PATH=${sddm-theme}/share/themes/${sddm-theme.pname}/components/,QT_IM_MODULE=qtvirtualkeyboard";
        InputMethod = "qtvirtualkeyboard";
      };
    };
  };
  services.displayManager.sessionPackages = [ inputs.hyprland.packages.${pkgs.system}.default ];
}
