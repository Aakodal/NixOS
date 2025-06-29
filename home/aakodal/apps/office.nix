{
  pkgs,
  config,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    onlyoffice-bin
    zotero
    hunspell
    hunspellDicts.fr-any
    hunspellDicts.en_US-large
  ];
}
