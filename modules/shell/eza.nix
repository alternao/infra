{ inputs, ... }:
{
  flake.modules.homeManager.shell = {
    programs.eza = {
      enable = true;
      theme = builtins.readFile
        (inputs.modus-themes.outPath + "/extras/eza/modus_vivendi_tinted.yml");
      icons = "always";
    };
  };
}
