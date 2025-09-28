{
  pkgs
}: {
  aakodal-catppuccin-grub = pkgs.callPackage ./aakodal-catppuccin-grub {};
  aptos = pkgs.callPackage ./aptos {};
  product-sans = pkgs.callPackage ./product-sans {};
  sddm-chili = pkgs.callPackage ./sddm-chili {};
}
