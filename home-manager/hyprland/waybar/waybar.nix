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
        modules-right = ["clock" "pulseaudio" "cpu" "memory" "temperature"];
        "hyprland/workspaces" = {
	  all-outputs = true;
	  disable-scroll = true;
	  warp-on-scroll = false;
	  format = "";
        };
        "tray" = {
          icon-size = 15;
          spacing = 10;
        };
        "clock" = {
          format = "󰥔 {:%H:%M}";
        };
        "cpu" = {
          format = "  {usage}%";
          tooltip = false;
        };
        "memory" = {
          format = "  {}%";
        };
        "temperature" = {
          critical-threshold = 80;
          format = "{icon}{temperatureC}°C";
          format-icons = ["" "" ""];
        };
        "pulseaudio" = {
          scroll-step = 3;
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}% ";
          format-bluetooth-muted = "󰖁 {icon} {format_source}";
          format-muted = "󰖁 {format_source}";
          format-source-muted = " ";
          format-icons = {
            headphone = " ";
            default = [" " " " "  "];
          };
        on-click = "pwvucontrol";
	    on-click-right = "overskride";
        };
      };
    };
  };
}

