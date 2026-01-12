{ inputs, ... }:
{
  flake.modules = {
    homeManager.shell = {
      programs = {
        bat = {
          enable = true;
          themes = {
            modus_vivendi_tinted = {
              src = inputs.modus-themes.outPath + "/extras/bat";
              file = "modus_vivendi_tinted.tmTheme";
            };
          };
          config = {
            theme = "modus_vivendi_tinted";
          };
        };
      };
    };
  };
}
