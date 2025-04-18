{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    homebrew-core = { url = "github:homebrew/homebrew-core"; flake = false; };
    homebrew-cask = { url = "github:homebrew/homebrew-cask"; flake = false; };
    homebrew-bundle = { url = "github:homebrew/homebrew-bundle"; flake = false; };

    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # sops-nix.url = "github:Mic92/sops-nix";
    # sops-nix.inputs.nixpkgs.follows = "nixpkgs";

    # disko.url = "github:nix-community/disko";
    # disko.inputs.nixpkgs.follows = "nixpkgs";

    # vscode-server.url = "github:nix-community/nixos-vscode-server";
  };

  outputs = { ... }@inputs:
    with inputs;
    let
      inherit (self) outputs;

      # stateVersion = "24.05";
      libx = import ./lib { inherit inputs outputs stateVersion; };

    in {

      darwinConfigurations = {
        # personal
        personal = libx.mkDarwin { hostname = "personal"; };
        # nauvis = libx.mkDarwin { hostname = "nauvis"; };
        # mac-studio = libx.mkDarwin { hostname = "mac-studio"; };
        # mac-mini = libx.mkDarwin { hostname = "mac-mini"; };
        # mooncake = libx.mkDarwin { hostname = "mooncake"; };

        # work
        work = libx.mkDarwin { hostname = "work"; };
      };

      # colmena = {
      #   meta = {
      #     nixpkgs = import inputs.nixpkgs { system = "x86_64-linux"; };
      #     specialArgs = {
      #       inherit inputs outputs stateVersion self;
      #     };
      #   };

      #   defaults = { lib, config, name, ... }: {
      #     imports = [
      #       inputs.home-manager.nixosModules.home-manager
      #     ];
      #   };

      #   # wd
      #   morphnix = import ./hosts/nixos/morphnix;
      #   nvllama = import ./hosts/nixos/nvllama;

      #   # test system
      #   # yeager = nixosSystem "x86_64-linux" "yeager" "alex";
      # };

    };

}
