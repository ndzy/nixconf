{
    imports = [
        
        # Hyprland

        ./programms.nix
        ./monitors.nix
        ./binds.nix
        ./env.nix
        ./input.nix
        ./look.nix
        ./windowrules.nix

        # Hyprlock

        ./hyprlock.nix

        # Hypridle

        ./hypridle.nix


        # Wallpapers
        
        #./waypaper.nix

       # Material-You themes

       ./matugen.nix 

        # Waybar

        ./waybar/waybar.nix

        # Wofi

        ./wofi/wofi.nix

    ];
    
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
  };
}
