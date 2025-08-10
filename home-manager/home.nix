{ config, pkgs, ... }:
{
	home = {
		username = "sicsick";
		homeDirectory = "/home/sicsick";
		stateVersion = "25.05";
	};
	
	imports = [
		./alacritty.nix
		./fish.nix
		./chromium.nix
		./gtk.nix
        ./hyprland/hyprconf.nix
	];
}

