{
  flake.modules.nixos.openssh = {
    services.openssh = {
      enable = true;
      openFirewall = true;
      settings = {
        PermitRootLogin = "no";
        PasswordAuthentication = true; # あとで無効化の予定
        KbdInteractiveAuthentication = false;
        X11Forwarding = false;
      };
    };
  };
}
