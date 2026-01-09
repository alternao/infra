{
  flake.modules.nixos.base = {
    nix = {
      extraOptions = ''
        connect-timeout = 5
        log-lines = 50
        min-free = 128000000
        max-free = 1000000000
        fallback = true
      '';
      optimise.automatic = true;
      settings = {
        trusted-users = [
          "root"
        ];
        auto-optimise-store = true;
        experimental-features = [
          "nix-command"
          "flakes"
        ];
        warn-dirty = false;
        tarball-ttl = 60 * 60 * 24;
      };
    };
  };
}
