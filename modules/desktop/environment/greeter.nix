{
  flake.modules.nixos.desktop =
    { pkgs, ... }:
    {
      services.greetd = {
        enable = true;
        settings = {
          default_session = {
            command = "${pkgs.tuigreet}/bin/tuigreet -t -r --remember-session --asterisks -c 'uwsm start niri-uwsm.desktop'";
            user = "greeter";
          };
        };
      };
    };
}
