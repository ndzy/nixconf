{
    
    programs.tmux = {

        enable = true;

        terminal = "tmux-256color";

        baseIndex = 1;

        extraConfig = 
        ''

          set -g default-terminal "screen-256color" # Colors support.

          set -g mouse on # Enable Mouse.

          set -g base-index 1       # Starting Session with first index.
          setw -g pane-base-index 1 #
                             
          #
          # Binds.
          # 
          
          set -g prefix C-a # Base Prefix.
          
          unbind r                        # Reload config.
          bind r source-file ~/.tmux.conf # 
          
          bind -r j resize-pane -D 5 # Change Size of Window.
          bind -r k resize-pane -U 5 #
          bind -r l resize-pane -R 5 #
          bind -r h resize-pane -L 5 #
                                     #
          bind -r m resize-pane -Z   #
          
          
          #
          # Theme.
          #
          
          run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux
          
          set -g @catppuccin_flavor "mocha"
          set -g @catppuccin_window_status_style "rounded"
          
          set -g status-right-length 100
          set -g status-left-length 100
          set -g status-left ""
          set -g status-right "#{E:@catppuccin_status_application}"
          set -agF status-right "#{E:@catppuccin_status_cpu}"
          set -ag status-right "#{E:@catppuccin_status_session}"
          set -ag status-right "#{E:@catppuccin_status_uptime}"
          set -agF status-right "#{E:@catppuccin_status_battery}"
          
          run ~/.config/tmux/plugins/tmux-plugins/tmux-cpu/cpu.tmux
          run ~/.config/tmux/plugins/tmux-plugins/tmux-battery/battery.tmux
          
          #
          # Plugin Manager.
          #
          
          # List Of Plugins:
          
          set -g @plugin 'tmux-plugins/tpm'           
          set -g @plugin 'tmux-plugins/tmux-sensible'
          set -g @plugin 'catppuccin/tmux#v2.1.3'
          set -g @catppuccin_flavor 'mocha'
          
          run '~/.tmux/plugins/tpm/tpm'  # Initialisation of Plugin Manager.
        
        ''
  };

}
