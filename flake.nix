{
  description = "My NixOS configuration`";

  inputs = {
    nixpkgs.url = "github:/nixos/nixpkgs/nixpkgs-unstable";

    import-tree.url = "github:vic/import-tree";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    modus-themes = {
      url = "github:miikanissi/modus-themes.nvim";
      flake = false;
    };

    org-babel.url = "github:emacs-twist/org-babel";

    nix-qml-support = {
      url = "github:outfoxxed/nix-qml-support";
    };
  };

  outputs =
    { flake-parts, import-tree, nixpkgs, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ (import-tree ./modules) ];
        
      systems = [ "x86_64-linux" ];
    };
}
