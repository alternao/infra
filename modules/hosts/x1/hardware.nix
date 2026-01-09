{
  flake.modules.nixos."hosts/x1" = { imports = [ ./_hwconf.nix ]; };
}
