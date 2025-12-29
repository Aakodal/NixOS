{
  lib,
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    virt-manager
    kvmtool
    polkit_gnome
    freerdp
    bc
    docker-compose
  ];

  security.polkit.enable = true;

  environment.variables.LIBVIRT_DEFAULT_URI = "qemu:///system";

  virtualisation =  {
    kvmgt.enable = true;
    spiceUSBRedirection.enable = true;
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        package = pkgs.qemu_kvm;
      };
    };
    docker.enable = true;
  };

  users.users.aakodal.extraGroups = [ "libvirt" "libvirtd" "docker" ];
}
