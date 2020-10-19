{
  description = "A custom set of packages and modules for nixos";

  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-20.09;

  outputs = {self, nixpkgs}:
    let

      pkgs = import nixpkgs {
        system = "x86_64-linux";
      };
    in rec {
      nixosModules.nixpkgs-custom = {
        imports = [ ./modules ];
      };
    };
}
