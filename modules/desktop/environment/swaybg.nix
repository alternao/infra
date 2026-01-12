{
  flake.modules.homeManager.desktop =
    { config, pkgs, ... }:
    let
      wallpaper = "${config.xdg.dataHome}/wallpapers/default.png";
    in
    {
      home.packages = [ pkgs.swaybg ];

      systemd.user.services = {
        swaybg = {
	        Unit = {
	          Description = "Wallpaper solution for Wayland";
	          Documentation = "https://github.com/swaywm/swaybg";
            PartOf = "graphical-session.target";
            After = "graphical-session.target";
            Requisite = "graphical-session.target";
	        };
          
          Service = {
	          ExecStart = "${pkgs.swaybg}/bin/swaybg -i ${wallpaper} -m fill -o *";
            Restart = "on-failure";
	        };
          
	        Install = {
	          WantedBy = [ "graphical-session.target" ];
	        };
	      };
      };
      
      home.file = {
        "${wallpaper}".source = ../../../assets/wallpapers/nix-dark.png;
      };
    };
}
