{
  config,
  lib,
  nixpkgs,
  ...
}:
{
  perSystem =
    { system, ...}:
    let
      predicate = pkg: builtins.elem (lib.getName pkg) config.nixpkgs.allowedUnfreePackages;
    in
    {
      _module.args.pkgs = import nixpkgs {
        inherit system;
        
        config.allowUnfreePredicate = predicate;
        
        overlays = [ ];
      };
    };
}
