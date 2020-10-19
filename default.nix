{pkgs, ...}:
{
  sddm.themes.chili = pkgs.callPackage ./pkgs/sddm/themes/chili {
    qtbase = pkgs.qtbase;
  };

  modules = import ./modules;
}
