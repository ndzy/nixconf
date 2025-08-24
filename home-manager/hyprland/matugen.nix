
{
  
  programs.matugen = {
    
    enable = true;

    settings = {
    
      templates.hyprland = {
        input_path = "'~/.config/matugen/templates/hyprland-colors.conf'";
        output_path = "'~/.config/hypr/colors.conf'";
        post_hook = "'hyprctl reload'";
      };

      templates.alacritty = {
        input_path = "'~/.config/matugen/templates/alacritty.toml'";
        output_path = "'~/.config/alacritty/colors.toml'";
      };
      
      templates.waybar = {
        input_path = "'~/.config/matugen/templates/colors.css'";
        output_path = "'~/.config/waybar/colors.css'";
        post_hook = "'pkill -SIGUSR2 waybar'";
      };

      templates.wofi = {
        input_path = "'~/.config/matugen/templates/colors.css'";
        output_path = "'~/.config/wofi/colors.css'";
      };

      templates.gtk3 = {
        input_path = "'~/.config/matugen/templates/gtk-colors.css'";
        output_path = "'~/.config/gtk-3.0/colors.css'";
      };

      templates.gtk4 = {
        input_path = "'~/.config/matugen/templates/gtk-colors.css'";
        output_path = "'~/.config/gtk-4.0/colors.css'";
      };

      templates.qt6-kde = {
        input_path = "'~/.config/matugen/templates/matugen.colors'";
        output_path = "'~/.local/share/color-schemes/matugen.colors'";
      };

      templates.vesktop = {
        input_path = "'~/.config/matugen/templates/midnight-discord.css'";
        output_path = "'~/.config/vesktop/themes/midnight-discord.css'";
      };
      
      templates.dunst = {
        input_path = "'~/.config/matugen/templates/dunstrc-colors'";
        output_path = "'~/.config/dunst/dunstrc'";
        post_hook = "'dunstctl reload'";
      };
    };
  };

}
