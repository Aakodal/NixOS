{
  pkgs,
  ...
}: {
  imports = [
    ./theme.nix
  ];

  home.packages = with pkgs; [
    macchina
  ];

  xdg.configFile."macchina/macchina.toml".source = ./config.toml;
}
