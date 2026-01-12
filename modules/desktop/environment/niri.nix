{
  flake.modules.nixos.desktop = {
    programs = {
      niri.enable = true;
    };
  };

  flake.modules.homeManager.desktop =
    { config, ...}:
    {
      home = {
        file = {
          "${config.xdg.configHome}/niri/config.kdl".text = builtins.readFile ./niri-config.kdl;
        };
      };
    };
}
