{ pkgs, ... }:
{
  programs.fish = {
    
    enable = true;
    
    interactiveShellInit = ''
      alias r='sudo nixos-rebuild switch';
      alias h='home-manager switch';
      alias conf='sudo nvim /etc/nixos/';
      alias zapret='bash ~/zapret-discord-youtube-linux/main_script.sh -nointeractive';
      alias s='sudo';
      alias e='exit';
      alias c='clear';
    '';
  
  };
}
