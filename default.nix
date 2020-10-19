{pkgs, ...}:
{
  hello = pkgs.callPackage ./pkgs/hello { };

  sddm.themes.chili = pkgs.callPackage ./pkgs/sddm/themes/chili { };

  modules = import ./modules;
}
