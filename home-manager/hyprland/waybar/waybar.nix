{
  
  programs.waybar = {
    
    enable = true;
    
    style = ./waybar.css;
    
    settings = {
      mainBar = {
        height = 10;
    	position = "bottom";
        margin = "0 0 0";
        modules-left = ["tray"];
        modules-center = ["hyprland/workspaces"];
        modules-right = ["clock" "group/first" "cpu" "memory" "temperature"];
        "hyprland/workspaces" = {
	        all-outputs = true;
	        disable-scroll = true;
	        warp-on-scroll = false;
	        format = "";
        };
        "tray" = {
          tooltip = false;
          icon-theme = "Papirus-Nord";
          icon-size = 15;
          spacing = 10;
        };
        "clock" = {
          tooltip = true;
          format = "󰥔 {:%H:%M}";
          tooltip-format = "󰃮 {:%a, %d %b %Y} ";
        };
        "cpu" = {
          tooltip = false;
          format = " ";
          format-alt = "  {usage}%";
        };
        "memory" = {
          tooltip = false;
          format = " ";
          format-alt = "  {used} Gb";
          interval = 1;
        };
        "temperature" = {
          critical-threshold = 80;
          tooltip = false;
          format = "{icon}";
          format-alt = "{icon} {temperatureC}°C";
          format-icons = ["" "" ""];
        };
        "pulseaudio" = { 
          scroll-step = 3;
          tooltip = false;
          format = "{icon}";
          format-bluetooth = "{icon} ";
          format-bluetooth-muted = "󰖁 {icon} ";
          format-muted = "󰖁";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            default = ["" "" " "];
          };
        };

        "pulseaudio/slider" = {
          min = 0;
          max = 100;
          rotate = 0;
          device = "pulseaudio";
          scroll-step = 1;
        };

        "group/first" = {
          orientation = "horizontal";
          drawer = {
            transition-duration = 600;
            children-class = "not-power";
            transition-to-left = true;
            click-to-reveal = true;
          };
        modules = [ "pulseaudio" "pulseaudio/slider" ]; 
         };
      };
    };
  };

}

