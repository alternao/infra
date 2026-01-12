{
  flake.modules.homeManager.desktop = {
    programs.alacritty = {
      enable = true;
      settings = {
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
          size = 13;
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
