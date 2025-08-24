{
  
  wayland.windowManager.hyprland.settings = {
      
      windowrule = [
          
          "suppressevent maximize, class:.*"
          "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
          "float, class:(com.saivert.pwvucontrol)$"
          "size 200 600, class:(com.saivert.pwvucontrol)$"
          "move 1570 412, class:(com.saivert.pwvucontrol)$"
          "pin, class:(com.saivert.pwvucontrol)$"

          "float, class:(overskride)$"

          "float, class:(imv)$"

          "float, class:(mpv)$"
      
     ];

      windowrulev2 = [

          "opacity 0.8 0.8,class:(alacritty)$"
          "opacity 0.8 0.8,class:($file)$"
          "opacity 1 0.8,class:(com.saivert.pwvucontrol)$"
          "opacity 0.8 0.8,class:(vesktop)$"
          "opacity 0.8 0.8,class:(org.telegram.desktop)$"
          "opacity 0.8 0.8,class:(waypaper)$"
          "opacity 1 0.85,class:(obsidian)$"

      ];
  };

}
