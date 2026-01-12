{
  flake.modules.homeManager.desktop = {
    programs.fuzzel = {
      enable = true;
      settings = {
        main = {
          font = "PlemolJP Console NF:style=Medium:size=14";
          terminal = "alacritty";
          lines = 10;
          width = 50;
          horizontal-pad = 40;
          vertical-pad = 16;
          line-height = 24;
          fields = "name,generic,comment,categories,filename,keywords";
          show-actions = "yes";
        };
        
        # colors = {
        #   background = "1e1e2eff"; # Mocha base
        #   text = "cdd6f4ff"; # Mocha text
        #   prompt = "b7bdf8ff"; # Mocha lavender (accent)
        #   placeholder = "6c7086ff"; # Mocha surface2 (muted)
        #   input = "cdd6f4ff"; # Mocha text
        #   match = "585b70ff"; # Mocha red (highlight for matches)
        #   selection = "b7bdf8ff"; # Mocha surface1
        #   selection-text = "1e1e2eff"; # Mocha text
        #   selection-match = "585b70ff"; # Mocha red (same as match)
        #   counter = "9399b2ff"; # Mocha subtext0
        #   border = "b7bdf8ff"; # Mocha crust
        # };
        
        border = {
          width = 2;
          radius = 10;
        };
        
        dmenu = {
          exit-immediately-if-empty = "yes";
        };
      };
    };
  };
}
