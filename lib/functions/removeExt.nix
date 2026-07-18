{
  lib,
}: file: let
  nameParts = builtins.filter (x: x != "" && x != ".") (
    lib.flatten (
      builtins.split "([^\.]*)" file
    )
  );
in builtins.concatStringsSep "." (
  lib.sublist 0 ((builtins.length nameParts) - 1) nameParts
)
