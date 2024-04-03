{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    hyprlock.url = "github:hyprwm/hyprlock";
    xdg-portal-hyprland.url = "github:hyprwm/xdg-desktop-portal-hyprland";
    ags.url = "github:Aylur/ags";

    waveforms.url = "github:CrystalKeck27/waveforms-flake";
  };

  outputs = { self, nixpkgs, home-manager, hyprland, waveforms, ... }@inputs: let
  supportedSystems = ["x86_64-linux"];

  forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

  nixpkgsFor = forAllSystems (system: import nixpkgs {inherit system;});
  in {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs hyprland;};
      system = "x86_64-linux";
      modules = [
        ./hosts/galley/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useUserPackages = true;
            useGlobalPkgs = false;
            extraSpecialArgs = {inherit inputs;};
            users.crystal = ./home/crystal/home.nix ;
          };
        }
        hyprland.nixosModules.default
        waveforms.nixosModule
      ];
    };

    devShells = forAllSystems (system: let
      pkgs = nixpkgsFor.${system};
    in {
      default = pkgs.mkShell {
        buildInputs = with pkgs; [
          git
          alejandra
          statix
        ];
      };
    });
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
  };
}
