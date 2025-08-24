{ pkgs, ... }:
{

  programs.fish = {
    
    enable = true;
    
    interactiveShellInit = ''
      alias r='sudo nixos-rebuild switch --flake ~/nixconf/';
      alias h='home-manager switch --flake ~/nixconf';
      alias conf='nvim ~/nixconf/';
      alias zapret='bash ~/zapret-discord-youtube-linux/main_script.sh -nointeractive';
      alias s='sudo';
      alias e='exit';
      alias c='clear';
    '';
  
  };

}
