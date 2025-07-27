{
  pkgs,
  ...
}: {
  users.users.aakodal = {
    isNormalUser = true;
    description = "Aakodal";
    createHome = true;
    initialPassword = "azerty";
    extraGroups = [ "wheel" "audio" "video" "input" "nix" "networkmanager" "sys" "kvm" ];
    homeMode = "755";
  };
}
