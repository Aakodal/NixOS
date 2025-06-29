{
  pkgs,
  ...
}: let
  fluent-icons = pkgs.fluent-icon-theme.override {
    colorVariants = [ "standard" ];
  };
in {
  home.packages = [
    fluent-icons
  ];

  gtk.iconTheme = {
    name = "Fluent-light";
    package = fluent-icons;
  };
}
