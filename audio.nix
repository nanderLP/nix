{ config, pkgs, ... }:

{
  # sound stuff
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    jack.enable = true;
    media-session.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };
}
