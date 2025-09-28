{ pkgs, ... }: {
  imports = [
    ./codecs.nix
    ./login.nix
    ./printing.nix
    ./tumbler.nix
    ./xserver.nix
  ];

  services.udisks2.enable = true;
  services.power-profiles-daemon.enable = true;
  services.gvfs.enable = true;
}
