{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager = {
      lightdm.enable = true;
      autoLogin.enable = true;
      autoLogin.user = "nander";
    };
    desktopManager = {
      # DE
      pantheon = {
        enable = true;
        #extraSwitchBoardPlugs = [ pkgs.pantheon-tweaks ];
      };
    };
  };
}
