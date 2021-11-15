{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];
  
  home-manager.useGlobalPkgs = true;
  
  home-manager.users.nander = { pkgs, ... }: {
    # programs and stuff yay
    home.packages = with pkgs; [ firefox-wayland discord nodejs-17_x spotify neofetch ];
    
    programs = {
      vscode.enable = true;
      zsh = {
        enable = true;
        envExtra = "MOZ_ENABLE_WAYLAND=1";
      };
      starship = {
        enable = true;
        enableZshIntegration = true;
      };
      kitty = {
        enable = true;
        font.name = "JetBrainsMono Nerd Font";
      };

      git.enable = true;
      gh.enable = true;
    };
  };
}

