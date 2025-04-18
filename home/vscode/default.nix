{ config, lib, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    # userSettings = pkgs.lib.importJSON ./settings.json;
    # keybindings = pkgs.lib.importJSON ./keybindings.json;
  };
}