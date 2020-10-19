{
  name = "nixpkgs-custom";

  epoch = "2020";

  description = "A custom set of packages and modules for nixos";

  requires = [ flake:nixpkgs ];

  provides = deps: {

    packages.sddm.themes.chili = pkgs.callPackage ./pkgs/sddm/themes/chili {  };

    nixosModules.nixpkgs-custom = import ./modules deps;

  };
}
