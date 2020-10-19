{ config, libs, pkgs, ... }:

{
  modules = import modules/default.nix {
    inherit config, libs, pkgs;
  };
}
