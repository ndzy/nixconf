{ 

  description = "Бля я Лох.";

  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
    
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    
    };
  
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { nixpkgs, home-manager, ... }: {
    
    nixosConfigurations.emptiness = nixpkgs.lib.nixosSystem {
      
      system = "x86_64-linux";
      modules = [ 
        ./nixos/configuration.nix
      ];
    };
  
    homeConfigurations.sicsick = home-manager.lib.homeManagerConfiguration {
      
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      modules = [ ./home-manager/home.nix ];
    
    };
  };

}
