{
  assets,
  config,
  inputs,
  outputs,
  self,
  ...
}: {
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {
      inherit assets inputs outputs self;
    };
    users.aakodal = ./aakodal;
  };
}
