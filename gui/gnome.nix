{ config, pkgs, ... }:

{

  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      displayManager.gdm.nvidiaWayland = true;
      desktopManager.gnome.enable = true;
    };
  };

  qt5 = {
    enable = true;
    platformTheme = "gnome";
 style = "adwaita-dark";
  };

  environment = {
    gnome.excludePackages = with pkgs.gnome; [
      epiphany
      geary
      #gnome-software
      #gnome-packagekit
    ];

    systemPackages = with pkgs; [
      qt5.qtwayland
    ];
  };
}
