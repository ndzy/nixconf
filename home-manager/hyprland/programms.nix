{
  wayland.windowManager.hyprland.settings = {
    
    "$term" = "alacritty";
    "$file" = "thunar";
    "$menu" = "wofi";
    "$screen" = "hyprshot -m region -o ~/screenshots/ -s";
    "$browser" = "chromium";
    "$msgr" = "telegram-desktop";
    "$cursor" = "hyprctl 'setcursor Bibata-Modern-Ice' 20";
    
    exec-once = [
        
        "waybar"
        "swww-daemon"
        "$cursor"
        "hypridle"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
    
    ];
  };
}


