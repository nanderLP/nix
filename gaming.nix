{ config, pkgs, ... }:

{

  #nixpkgs.config.allowBroken = true;
  #nixpkgs.config.packageOverrides = pkgs: {
  #  steam = pkgs.steam.override { nativeOnly = true; };
  #};


  # install steam
  programs.steam.enable = true;

  # lutris
  environment.systemPackages = with pkgs;
    [
      lutris
    ];
}
