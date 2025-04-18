{ config, inputs, pkgs, lib, ... }:
{
  home.stateVersion = "23.11";

  imports = [
    ./vscode
    ./eza
    ./fzf
  ];

  # list of programs
  # https://mipmip.github.io/home-manager-option-search

  # aerospace config
  # home.file = lib.mkMerge [
  #   (lib.mkIf pkgs.stdenv.isDarwin {
  #     ".config/aerospace/aerospace.toml".text = builtins.readFile ./aerospace/aerospace.toml;
  #   })
  # ];

  programs.gpg.enable = true;

  # programs.direnv = {
  #   enable = true;
  #   nix-direnv.enable = true;
  # };

  programs.git = {
    enable = true;
    userEmail = "jdaniel.asousa@gmail.com";
    userName = "Daniel Sousa @TutoDs";
    diff-so-fancy.enable = true;
    lfs.enable = true;
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      # merge = {
      #   conflictStyle = "diff3";
      #   tool = "meld";
      # };
      pull = {
        rebase = true;
      };
    };
  };

  programs.htop = {
    enable = true;
    settings= {
      hide_userland_threads = 1;
      highlight_base_name = 1;
      show_cpu_temperature = 1;
      show_program_path = 0;
    };
  };

  programs.lf.enable = true;

  # programs.starship = {
  #   enable = true;
  #   enableZshIntegration = true;
  #   enableBashIntegration = true;
  #   settings = pkgs.lib.importTOML ./starship/starship.toml;
  # };

  programs.oh-my-posh = {
    enable = true;
    settings = pkgs.lib.importTOML ./oh-my-posh/base.toml;
  };

  # programs.bash.enable = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    #initExtra = (builtins.readFile ../mac-dot-zshrc);
  };

  programs.home-manager.enable = true;
  programs.nix-index.enable = true;

  programs.bat = {
    enable = true;
    config.theme = "Catppuccin Mocha";
  };

  programs.zoxide.enable = true;

  programs.ssh = {
    enable = true;
    extraConfig = ''
  StrictHostKeyChecking no
    '';
    matchBlocks = {
      # ~/.ssh/config
      "github.com" = {
        hostname = "ssh.github.com";
        port = 443;
      };
      # wd

      # lancs
      # "e elrond" = {
      #   hostname = "100.117.223.78";
      #   user = "alexktz";
      # };
      # # jb
      # "core" = {
      #   hostname = "demo.selfhosted.show";
      #   user = "ironicbadger";
      #   port = 53142;
      # };
      # "status" = {
      #   hostname = "hc.ktz.cloud";
      #   user = "ironicbadger";
      #   port = 53142;
      # };
    };
  };
}
