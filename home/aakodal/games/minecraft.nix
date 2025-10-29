{
  pkgs,
  ...
}: {
  home = {
    packages = with pkgs; [
      prismlauncher
    ];

    sessionVariables."_JAVA_OPTIONS" = "-Dawt.useSystemAAFontSettings=gasp";
  };
}
