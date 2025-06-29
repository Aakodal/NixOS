{
  assets,
  self,
  ...
} @ inputs: let 
  inputs = self.inputs;
  outputs = self.outputs;
  mkSystem = inputs.nixpkgs.lib.nixosSystem;

  core = ../modules/core; # very basic and shared stuff for a working computer: boot, bluetooth, hardware control, networking
  utils = ../modules/utils; # shared services (nix, displayManager, xServer) and configs (fonts, locale, system env vars)
  virtualization = ../modules/virtualization;
  wayland = ../modules/wayland; # wayland basics for wayland-based hosts

  homes = ../home;

  home-manager = inputs.home-manager.nixosModules.home-manager;

  shared = [
    core
    utils
    homes
    home-manager
  ];
in {
  # Red laptop
  # Has some problems with GRUB, and no dGPU
  helheim = mkSystem {
    system = "x86_64-linux";
    modules = [
      ./helheim
      { networking.hostName = "helheim"; }
    ] ++ [ virtualization wayland ] ++ shared;
    specialArgs = { inherit assets inputs outputs self; };
  };

  # ASUS Zenbook 15
  # No dGPU
  niflheim = mkSystem {
    system = "x86_64-linux";
    modules = [
      ./niflheim
      { networking.hostName = "niflheim"; }
    ] ++ [ wayland ] ++ shared;
    specialArgs = { inherit assets inputs outputs self; };
  };
}
