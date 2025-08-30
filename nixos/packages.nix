{ pkgs, ... }:
{

  nixpkgs.config.allowUnfree = true;
  
  services.flatpak.enable = true; # Я ПИДОРАС

  environment.systemPackages = with pkgs; [
      
      # Drivers

      mesa

      # Utilits
      
      home-manager
      neovim
      tree
      wget
      git
      nftables
      fastfetch
      tmux

      # Sound

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
      scrcpy

      # Coding

      vscode
      python314
      android-tools
      gcc

      # WM
      
      hyprshot
      hyprpicker
      dunst
      nwg-look
      matugen

      xdg-desktop-portal
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
      cava

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
