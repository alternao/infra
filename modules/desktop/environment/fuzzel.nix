{
  flake.modules.homeManager.desktop = {
    programs.fuzzel = {
      enable = true;
      settings = {
        main = {
          font = "PlemolJP Console NF:style=Medium:size=16";
          terminal = "alacritty";
          lines = 10;
          width = 50;
          horizontal-pad = 40;
          vertical-pad = 16;
          line-height = 24;
          fields = "name,generic,comment,categories,filename,keywords";
          show-actions = "yes";
        };
        
        colors = {
          background = "0d0e1cff";
          text = "ffffffff";
          prompt = "fec43fff";
          placeholder = "ff9f80ff";
          input = "ffffffff";
          match = "fec43fff";
          selection = "00d3d0ff";
          selection-text = "ffffffff";
          selection-match = "ff5f59ff";
          counter = "9399b2ff";
          border = "b6a0ffff";
        };
        
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
