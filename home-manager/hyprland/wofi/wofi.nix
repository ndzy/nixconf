{
  
  programs.wofi = {
    
    enable = true;
    
    settings = {
      show="drun";
      hide_scroll = true;
      width = 350;
      height = 400;
      yoffset = 601;
      location = "top";
      always_parse_args = true;
      show_all = false;
      prompt="";
      print_command = true;
      insensitive = true;
      allow_images = true;
      image_size = 35;
      filter_rate = 100;
      allow_markup = true;
      no_actions = true;
    };
  
  };

  home.file.".config/wofi/style.css".source = ./wofi.css;

}
