{
  flake.modules.homeManager.shell = {
    home.shell.enableFishIntegration = true;

    programs.fish = {
      enable = true;
    };
  };
}
