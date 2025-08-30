{ pkgs, ... }:
{
  
  home.pointerCursor = {
  
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 20;
    gtk.enable = true;
  
  };
  
  gtk = {
    
    enable = true;
    
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };

    gtk4 = {
      
      extraConfig = {
        gtk-application-prefer-dark-theme = 1;
      };
    
    };

    iconTheme = {
      
      package = pkgs.papirus-nord;
      name  = "Papirus-Dark";
    
    };
    
    theme = {
      
      package = (pkgs.adw-gtk3);
      name = "adw-gtk3-dark";
    
    };

    font = {
      
      name = "Ubuntu Nerd Font Regular";
      size = 11;
    
    };    
  };

  xdg.portal.enable = true;

  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

}
