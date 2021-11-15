{ config, pkgs, inputs, ... }:

{
  services.xserver = {
    videoDrivers = [ "nvidia" ];
  };
  hardware = {
    nvidia = {
      modesetting.enable = true;
      # nvidiaPersistenced = false;
    };
    opengl = {
      enable = true;
      extraPackages = with pkgs; [ libvdpau-va-gl vaapiVdpau ];
      extraPackages32 = with pkgs; [ libvdpau-va-gl vaapiVdpau ];
    };
  };
  }

