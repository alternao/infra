
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

	keygrips = {
	  auth = "0F5FE99277DC4BC5F17D32FDB3000D12FCEFBBB2";
	  encode = "700A8188D87F345FAFBDE21ED64C9C4359B82A39";
          sign = "7BB942F7F712DDAFE6576E8DD30D95A8D17573AD";
        };
      };
    };

    modules.nixos.naogami =
      { pkgs, ... }:
      {
	# Don't enable fish option here.
	# If make it enable, home-manager can't set session variables.
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
