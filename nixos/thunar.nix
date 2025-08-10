{ pkgs, lib, config, ... }:
{
  #
  # THUNAR
  #
  
  programs.thunar.enable = true;

  programs.xfconf.enable = true;

  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
  ];

  services.tumbler.enable = true;
}
