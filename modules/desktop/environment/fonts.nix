{
  flake.modules.nixos.desktop =
    { pkgs, ... }:
    {
      fonts.packages = with pkgs; [
        nerd-fonts.hack
        nerd-fonts.jetbrains-mono
        noto-fonts-color-emoji
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
        plemoljp-nf
        
        dina-font
        aporetic
        monaspace
      ];
      
      fonts.fontconfig = {
        defaultFonts = {
          serif = [
            "Noto Serif CJK JP"
            "Noto Color Emoji"
          ];
          sansSerif = [
            "Noto Sans CJK JP"
            "Noto Color Emoji"
          ];
          monospace = [
            "PlemolJP Console NF"
            "Noto Color Emoji"
          ];
          emoji = [ "Noto Color Emoji" ];
        };
      };
    };
}
