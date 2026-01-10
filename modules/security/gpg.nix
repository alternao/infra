top:
{
  flake.modules.homeManager.gpg =
    { config, pkgs, ...}:
    let
      gpgHome = "${config.xdg.dataHome}/gnupg";
      userInfo = top.config.flake.meta.users.${config.home.username};
    in
    {
      programs.gpg = {
        enable = true;
        homedir = gpgHome;
      };
      
      home.sessionVariables = {
        GNUPGHOME = gpgHome;
      };

      services.gpg-agent = {
        enable = true;
        enableSshSupport = true;
        defaultCacheTtlSsh = 600; # ssh key cache would be expired after 10 minutes
        maxCacheTtlSsh = 1800;
        
        enableExtraSocket = true;
        
        pinentry.package = pkgs.pinentry-all;
      };
    };
}
