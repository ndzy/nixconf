{ pkgs, user, ... }: {
  programs.fish.enable = true;

  users = {
    defaultUserShell = pkgs.fish;
  };
}
