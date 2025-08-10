{
  programs.chromium = {
    enable = true;
    extensions = [
      
      # Ublock Origin
      { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; }

      # Bitwarden
      { id = "nngceckbapebfimnlniiiahkandclblb"; }

      # Enhancer for YouTube
      { id = "ponfpcnoihfmfllpaingbgckeeldkhle"; }

      # Privacy Badger
      { id = "ponfpcnoihfmfllpaingbgckeeldkhle"; }


 
    ];
  };
  
  nixpkgs.config.chromium.commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";

}
