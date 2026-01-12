{
  flake.modules.homeManager.desktop =
    { pkgs, ... }:
    {
      programs.firefox = {
        enable = true;
        languagePacks = [ "en-US" "ja"];
        nativeMessagingHosts = [ pkgs.browserpass ];
      };
    };
}
