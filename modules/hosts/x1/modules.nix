{
  config,
  ...
}:
{
  flake.modules.nixos."hosts/x1" = {
    imports =
      # Import the nixos modules for the host `x1`.
      with config.flake.modules.nixos;
      [
        base
        desktop
        openssh

        # Users
        root
        naogami
      ]

      # User specific Home-Manager modules.
      ++ [
        {
          home-manager.users.naogami.imports =
            with config.flake.modules.homeManager;
            [
              base
              desktop
              dev
              gpg
              neovim
              shell
            ];
        }
      ];
  };
}
