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
    iconTheme = {
      package = pkgs.papirus-nord;
      name  = "Papirus-Dark";
    };
    theme = {
      package = (pkgs.adw-gtk3);
      name = "adw-gtk3-dark";
    };
  };
}
