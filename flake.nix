{
  description = "Flake BTW";

  inputs = {
    # Essentials (nixpkgs-channel and home-manager)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Flake imports:
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

  outputs = { self, nixpkgs, zen-browser, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      username = "sicsick";
    in {
      nixosConfigurations.emptiness = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
          inherit system;
        };
        modules = [
          ./nixos/configuration.nix

          {
            nixpkgs.overlays = [
            ];
          }

          # Home Manager as a NIXOS Module
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              users.sicsick = import ./home-manager/home.nix;
              #useGlobalPkgs = true;
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
