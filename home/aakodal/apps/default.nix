{ pkgs, ... }: {
  imports = [
    ./rofi
    ./terminal
    ./browsers.nix
    ./discord.nix
    ./file_explorer.nix
    ./media.nix
    ./office.nix
    ./programming_languages.nix
    ./screenshot.nix
    ./vscodium.nix
    ./wine.nix
  ];
}
