{ inputs, ... }:
{
  flake.modules.homeManager.emacs =
    { pkgs, ... }:
    let
      tangle = inputs.org-babel.lib.tangleOrgBabel { languages = [ "emacs-lisp" ]; };
    in
      {
        programs.emacs = {
          enable = true;
          package = pkgs.emacs-pgtk;
        };
        
        home = {
          file = {
            ".emacs.d/init.el".text = tangle (builtins.readFile ./elisp/init.org);
            ".emacs.d/early-init.el".text = tangle (builtins.readFile ./elisp/early-init.org);
          };
          
          packages = [
            inputs.nix-qml-support.packages.${pkgs.system}.tree-sitter-qmljs
            inputs.nix-qml-support.packages.${pkgs.system}.qml-ts-mode
          ];
        };
      };
  };
}
