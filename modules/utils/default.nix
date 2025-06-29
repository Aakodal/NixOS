_: {
  imports = [
    ./nix
    ./services
    ./environment.nix
    ./fonts.nix
    ./locale.nix
 ];

  config.programs.zsh.enable = true;
}
