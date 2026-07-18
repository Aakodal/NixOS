{
  inputs,
  ...
}: let
  inherit (inputs.nixpkgs) lib;
in lib.extend (
  final: prev: {
    custom = {
      removeExt = import ./functions/removeExt.nix { inherit lib; };
    };
  }
)
