{ config, pkgs, ... }:

{
 	programs.bat = {
		enable = true;
		config = {
			theme = "Catppuccin Mocha";
			italic-text = "always";
		};
	};
}