{
  
  wayland.windowManager.hyprland.settings = {
      
      windowrule = [
          
          "suppressevent maximize, class:.*"
          "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
          
          # Sound Mixer

          "float, class:(com.saivert.pwvucontrol)$"
          "size 537 384, class:(com.saivert.pwvucontrol)$"
          "move 1358 626, class:(com.saivert.pwvucontrol)$"
          "pin, class:(com.saivert.pwvucontrol)$"
          
          # Bluetooth manager
          
          "size 517 575, title:(overskride)$"
          "move 1378 435, title:(overskride)$"
          "float, title:(overskride)$"
          "pin, title:(overskride)$"

          # File manager in telegram.

          "float, class:(.Telegram-wrapped)$"
          
          # Chrome Extensions

          "float, class:(chrome-nngceckbapebfimnlniiiahkandclblb-Default)$"

          # View Media

          "float, class:(imv)$"
          "float, class:(mpv)$"
      
     ];

      windowrulev2 = [

          # Blur

          "opacity 0.8 0.8,class:(alacritty)$"
          "opacity 0.8 0.8,class:($file)$"
          
          "opacity 1 0.8,class:(com.saivert.pwvucontrol)$"
          "opacity 1 0.8,title:(overskride)$"

          "opacity 0.8 0.8,class:(org.telegram.desktop)$"
          "opacity 0.8 0.8,class:(vesktop)$"
          "opacity 1 0.85,class:(obsidian)$"
          
          "opacity 0.8 0.8,class:(waypaper)$"
          "opacity 0.8 0.8,class:(nwg-look)$"
      ];
  };

}
