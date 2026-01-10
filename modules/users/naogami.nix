{
  config,
  ...
}:
{
  flake = {
    meta.users = {
      naogami = {
        email = "naogami@proton.me";
        name = "Nao Gami";
        username = "naogami";
        key = "104D504CF3E411F5CD1CBF88A3B4BE5E7F072D30";
      };
    };

    modules.nixos.naogami =
      { pkgs, ... }:
      {
	      # Don't enable fish option here.
	      # If it was enabled, home-manager would fail to set session variables.
	      # programs.fish.enable = true;
        
        users.users.naogami = {
          description = config.flake.meta.users.naogami.name;
          isNormalUser = true;
          createHome = true;
          extraGroups = [
            "networkmanager"
            "wheel"
          ];
          shell = pkgs.fish;
	        ignoreShellProgramCheck = true;
          initialPassword = "id";
        };
        
        nix.settings.trusted-users = [ config.flake.meta.users.naogami.username ];
      };
  };
}
