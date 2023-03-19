{
  description = "My workshop template";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    skm.url = "github:sagikazarmark/nur-packages";
    skm.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, skm, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;

          overlays = [
            (final: prev: {
              quarto = skm.packages.${system}.quarto;
              decktape = skm.packages.${system}.decktape;
            })
          ];
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            git
            gnumake
            quarto
            decktape
          ];

          shellHook = ''
            echo "quarto $(quarto --version)"
          '';
        };
      });
}
