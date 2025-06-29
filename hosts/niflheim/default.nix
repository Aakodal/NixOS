{
  pkgs,
  lib,
  ...
}: let
  inherit (builtins) filter map toString;
in {
  imports = [
    ./hardware-configuration.nix
  ] ++ filter (lib.strings.hasSuffix ".nix") (
    map toString (filter (path: path != ./default.nix) (lib.filesystem.listFilesRecursive ./specific-pkgs))
  );

  hardware.sensor.iio.enable = false;
}
