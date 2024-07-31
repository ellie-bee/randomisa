{
  description = "system verilog";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
    buildInputs = [
      pkgs.verilator
    ];
  in {
    devShells.${system} = {
      default = pkgs.mkShell { inherit buildInputs; };
    };
  };
}
