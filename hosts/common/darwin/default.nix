{ inputs, outputs, config, lib, hostname, system, username, pkgs, ... }:
let
  inherit (inputs) nixpkgs;
in
{
  users.users.tutods.home = "/Users/tutods";

  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      warn-dirty = false;
    };
  };
  nixpkgs = {
    config.allowUnfree = true;
    hostPlatform = lib.mkDefault "${system}";
  };
  system.stateVersion = 6;

  imports = [
    ./homebrew.nix
    ./settings.nix
    ./security.nix
    ./virtualization.nix
    ./networking.nix
  ];

  time = {
    timeZone = "Europe/Lisbon";
  };

  system.keyboard = {
    enableKeyMapping = true;
  };

  power = {
    sleep = {
      computer = 10;
    };
  };
}