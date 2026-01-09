{
  flake.modules =
    let
      stateVersion = "25.11";
    in
    {
      homeManager.base = {
        home = {
          inherit stateVersion;
        };
      };

      nixos.base = {
        system = {
          inherit stateVersion;
        };
      };
    };
}
