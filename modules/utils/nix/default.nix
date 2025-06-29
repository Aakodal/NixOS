{
  pkgs,
  lib,
  outputs,
  ...
}: {
  imports = [
    ./nix-ld.nix
  ];

  config = {
    system = {
      autoUpgrade.enable = false;
      stateVersion = lib.mkDefault "25.11";
    };

    nix = {
      package = pkgs.nix;
      settings.experimental-features = [ "nix-command" "flakes" ];

      gc = {
        automatic = true;
        dates = "daily";
        options = "--delete-older-than 7d";
      };
    };

    nixpkgs = {
      overlays = builtins.attrValues outputs.overlays;
      config.allowUnfree = true;
    };

    environment.systemPackages = with pkgs; [
      wget curl git
    ];
  };
}
