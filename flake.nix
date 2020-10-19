{
  description = "A custom set of packages and modules for nixos";

  inputs.pkgs.url = github:NixOS/nixpkgs/nixos-20.09;

  outputs = {self, pkgs}: {

    packages.sddm.themes.chili = pkgs.callPackage ./pkgs/sddm/themes/chili {  };

    nixosModules.nixpkgs-custom = {
      imports = [./modules];
    };
  };
}
