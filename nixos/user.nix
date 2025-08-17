{ pkgs, ... }: 
{
  
  programs.fish.enable = true;

  users = {
    
    defaultUserShell = pkgs.fish;
  
    users.sicsick = {

        isNormalUser = true;
        description = "sicsick";
        extraGroups = [ "networkmanager" "wheel" "input" ];
    };
  };

  services.getty.autologinUser = "sicsick";
}
