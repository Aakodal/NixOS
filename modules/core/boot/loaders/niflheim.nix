{
  config,
  lib,
  pkgs,
  ...
}: {
  config = lib.mkIf (config.networking.hostName == "niflheim") {
    environment.systemPackages = with pkgs; [ catppuccin-grub ];
    boot.loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        theme = pkgs.aakodal-catppuccin-grub;
      };
    };
  };
}
