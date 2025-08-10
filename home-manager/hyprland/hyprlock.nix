{

  programs.hyprlock = {

      enable = true;

      settings = {
          
          "source" = "~/.config/hypr/colors.conf";

          "$font" = "Ubuntu Nerd Font Bold";

          "$monitor" = "HDMI-A-1";

          bezier = "linear, 1, 1, 0, 0";
          animation = "fade, 1, 1.8, linear";

          general = {
              
              disable_loading_bar = true;
              hide_cursor = true;
          
          };

          background = {
              
              monitor = "";
              path = "screenshot";
              blur_passes = 4;
          
          };

          input-field = {
                
              monitor = "$monitor";
              size = "250, 50";
              outline_thickness = 4;
              dots_center = true;
              outer_color = "$primary";
              inner_color = "$background";
              font_color = "$primary";
              fade_on_empty = false;
              placeholder_text = "<i></i>";
              check_color = "rgb(3d59a1)";
              fail_color = "rgb(c53b53)";
              fail_text = "<i></i>";
              capslock_color = "rgb(ffc777)";
              position = "0, -30";
              halign = "center";
              valign = "center";
          
          };
          
          label = [

              {
              
              monitor = "$monitor";
              text = "$TIME";
              color = "$primary";
              font_size = 80;
              font_family = "$font";
              position = "0, 200";
              halign = "center";
              valign = "center";
              
              }
          
              {
              monitor = "$monitor";
	          text = "<i> 󰌾 </i>";
	          color = "$primary";
	          position = "3, 260";
	          font_size = 19;
	          font_family = "$font";
	          halign = "center";
	          valign = "center";
              }

              {
              monitor = "$monitor";
              text = "cmd[update:43200000] date +'%d %B'";
              color = "$primary";
              font_size = 14;
              font_family = "$font";
              position = "0, 140";
              halign = "center";
              valign = "center";
              }
        ];
    };
  };
}
