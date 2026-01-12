{ inputs, ... }:
{
  flake.modules.homeManager.shell = {
    home.shell.enableFishIntegration = true;

    programs.fish = {
      enable = true;
      interactiveShellInit = builtins.readFile
        (inputs.modus-themes.outPath + "/extras/fish/modus_vivendi_tinted.fish");
    };
  };
}
