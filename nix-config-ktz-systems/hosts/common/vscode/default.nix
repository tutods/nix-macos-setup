{ pkgs, lib, ... }:
{
  imports = [
    ./extensions.nix
  ];

  programs.vscode = {
    enable = true;
    userSettings = pkgs.lib.importJSON ./settings.json;
    keybindings = pkgs.lib.importJSON ./keybindings.json;
  };
}