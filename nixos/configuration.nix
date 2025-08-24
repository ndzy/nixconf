{ config, lib, pkgs, ... }:
{
  
  imports =
    [ 
    
      ./hardware-configuration.nix
	    ./system.nix
	    ./bootloader.nix
	    ./sound.nix
	    ./network.nix
	    ./user.nix
	    ./packages.nix
	    ./hyprland.nix
	    ./thunar.nix
	    ./steam.nix
    
    ];
  
  nix.settings.experimental-features = [ 
  
  "nix-command" 
  "flakes" 
  
  ];

  system.stateVersion = "25.05"; # Did you read the comment?

}

