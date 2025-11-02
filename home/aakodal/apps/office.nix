{
  pkgs,
  config,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    onlyoffice-desktopeditors
    zotero
    hunspell
    hunspellDicts.fr-any
    hunspellDicts.en_US-large
  ];
}
