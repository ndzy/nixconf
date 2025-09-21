{
  description = "Nixos config flake";

  inputs = {
    # Essentials (nixpkgs-channel and home-manager)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Flake imports:
    zen-browser.url = "github:0xc000022070/zen-browser-flake"; 
  };

  outputs = { self, nixpkgs, zen-browser, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      host = "emptiness";
      username = "sicsick";
    in {
      nixosConfigurations."${host}" = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
          inherit host;
          inherit system;
        };
        modules = [
          ./nixconf/nixos/configuration.nix

          {
            nixpkgs.overlays = [
            ];
          }

          # Home Manager as a NIXOS Module
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              users.sicsick = import ./nixconf/home-manager/home.nix;
              useGlobalPkgs = true;
              useUserPackages = true;
              
	      # Home-Manager Modules
              extraSpecialArgs = {
                inherit inputs; 
              };
              sharedModules = [
              ];
            };
          }
        ];
      };
    };
}
