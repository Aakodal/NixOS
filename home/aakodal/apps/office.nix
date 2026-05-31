{
  pkgs,
  config,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    libreoffice-qt-fresh
    onlyoffice-desktopeditors
    zotero
    hunspell
    hunspellDicts.fr-any
    hunspellDicts.en_US-large
  ];
}
