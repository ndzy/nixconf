{pkgs, user, ...}:

{
   programs.waypaper = {
      
      enable = true;

      settings = {

          language = "ru";
          folder = "~/X";
          monitors = "All";
          wallpaper = "~/X/3.png";
          show_path_in_tooltip = true;
          backend = "swww";
          fill = "fill";
          sort = "name";
          color = "#ffffff";
          subfolders = true;
          all_subfolders = false;
          show_hidden = false;
          show_gifs_only = false;
          post_command = "~/.config/waypaper/change.sh";
          number_of_columns = 3;
          swww_transition_type = "any";
          swww_transition_step = 90;
          swww_transition_angle = 0;
          swww_transition_duration = 2;
          swww_transition_fps = 180;
          mpvpaper_sound = false;
          mpvpaper_options = "";
          use_xdg_state = false;

      };
  };
}
