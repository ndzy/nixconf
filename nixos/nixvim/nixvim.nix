{

  imports = [
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    colorschemes.catppuccin.enable = true;
  };
}
