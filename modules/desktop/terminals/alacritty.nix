{ inputs, ...}:
{
  flake.modules.homeManager.desktop = {
    programs.alacritty = {
      enable = true;
      settings = {
        general.import = [
          (inputs.modus-themes.outPath + "/extras/alacritty/modus_vivendi_tinted.toml")
        ];
        window = {
          decorations = "Full";
          dynamic_title = true;
        };
        scrolling = {
          history = 10000;
        };
        font = {
          normal = {
            family = "PlemolJP Console NF";
            style = "Regular";
          };
          size = 14;
        };
        cursor = {
          style = {
            shape = "Block";
            blinking = "On";
          };
        };
      };
    };
  };
}
