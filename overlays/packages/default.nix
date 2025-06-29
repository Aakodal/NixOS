{
  pkgs
}: {
  calibri = pkgs.callPackage ./calibri {};
  aakodal-catppuccin-grub = pkgs.callPackage ./aakodal-catppuccin-grub {};
  product-sans = pkgs.callPackage ./product-sans {};
  sddm-chili = pkgs.callPackage ./sddm-chili {};
}
