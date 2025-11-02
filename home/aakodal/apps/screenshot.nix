{
  assets,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
    flameshot
  ];

  xdg.configFile."flameshot/flameshot.ini".text = ''
    [General]
    contrastOpacity=188
    showDesktopNotification=false
    showSelectionGeometryHideTime=3000
    showStartupLaunchMessage=false
    uiColor=${assets.colors.base.red}
    useGrimAdapter=true
  '';
}
