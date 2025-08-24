{

  programs.alacritty = {
      
    enable = true;
    
    settings = {
      
      window = {
      
          opacity = 0.8;
          
          padding.x = 20;
          padding.y = 20;

          decorations = "Buttonless";
          blur = true;

      };
      
      font = {
          size = 19;
          normal.family = "JetBrainsMono Nerd Font";
      };
      
      general.import = ["colors.toml"];
    
    };
  };

}
