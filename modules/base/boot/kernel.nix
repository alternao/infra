{
  flake.modules.nixos.base = {
    boot.kernelParams = [ "console=tty12" ];
  };
}
