{
  description = "Flake BTW";

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
   
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, zen-browser, nixvim, ... }@inputs: 
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
     nixosConfigurations.emptiness = nixpkgs.lib.nixosSystem {
        
        specialArgs = {
          inherit inputs;
	};
        
        modules = [
          ./nixos/configuration.nix
	  inputs.nixvim.nixosModules.nixvim
          #{
          #  nixpkgs.overlays = [
          #  ];
          #}
	];
      };
         
      homeConfigurations.sicsick = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
	      extraSpecialArgs = {
          inherit inputs;
        };
        modules = [
	        ./home-manager/home.nix
	      ];
      };
      
      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [
  
        ];
      };
    };
}
