{ pkgs, ... }:
{
  #
  # PACKAGES
  #

  nixpkgs.config.allowUnfree = true;
  
  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
      
      # Other

      home-manager

      #Drivers

      mesa

      # Utilits
      
      neovim
      tree
      wget
      git
      nftables
      fastfetch
      tmux
      wine

      # Sound

      kitty
      pavucontrol
      pwvucontrol
      overskride
      
      # Soft

      bitwarden
      file-roller
      qbittorrent
      telegram-desktop
      vesktop
      obsidian
      obs-studio
      adw-gtk3

      # Coding

      vscode
      python314
      gcc

      # WM
      
      hyprshot
      hyprpicker
      dunst
      nwg-look
      matugen
      
      papirus-nord
      adw-gtk3
     
      # Clipboard Manager
      
      nwg-clipman
      cliphist
      wl-clipboard
      
      # Wallpapers
      
      waypaper
      swww
      
      # Media

      mpv
      imv

      # Icons

      papirus-nord
  ];

  fonts.packages = with pkgs; [
      nerd-fonts.ubuntu
      nerd-fonts.symbols-only
      noto-fonts-extra
      nerd-fonts.jetbrains-mono
      noto-fonts
      noto-fonts-emoji
      twemoji-color-font
      font-awesome
      powerline-fonts
      powerline-symbols
  ];
}
