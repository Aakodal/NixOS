{
  pkgs
}: {
  aakodal-catppuccin-grub = pkgs.callPackage ./aakodal-catppuccin-grub {};
  aptos = pkgs.callPackage ./aptos {};
  custom-fonts = pkgs.callPackage ./custom-fonts {};
  orchis-kde = pkgs.callPackage ./orchis-kde {};
  product-sans = pkgs.callPackage ./product-sans {};
  sddm-chili = pkgs.callPackage ./sddm-chili {};
}
