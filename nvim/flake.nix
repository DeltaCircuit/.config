{
  description = "HomelabX NeoVim";

  inputs.nixpkgs.url = "github:nixOS/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
            lua-language-server
            stylua
        ];

        name = "homelabx-neovim";
      };
    });
}