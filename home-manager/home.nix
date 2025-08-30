{ config, pkgs, ... }:
{

  home = {
		
    username = "sicsick";
		homeDirectory = "/home/sicsick";
		stateVersion = "25.05";
	
  };
	
	imports = [
		
		./chromium.nix
		./gtk.nix
    
    ./hyprland/hyprconf.nix
    
    ./term
  ];

}

