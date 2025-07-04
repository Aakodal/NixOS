{
  pkgs,
  ...
}: {
  users.users.aakodal = {
    isNormalUser = true;
    description = "Aakodal";
    createHome = true;
    shell = pkgs.zsh;
    initialPassword = "azerty";
    extraGroups = [ "wheel" "audio" "video" "input" "nix" "networkmanager" "sys" "kvm" ];
    homeMode = "755";
  };
}
