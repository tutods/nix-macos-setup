{
  description = "Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    # Homebrew package manager
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    
    # Home Manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew, home-manager }:
  let
    user = "tutods";
    configuration = { pkgs, config, ... }: {
      nixpkgs.config.allowUnfree = true;

      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = [ 
        pkgs.git
        pkgs.gh
        pkgs.htop
        pkgs.mkalias
        pkgs.alacritty
        pkgs.bat
        pkgs.eza
        pkgs.fnm
        pkgs.fzf
        pkgs.zoxide
        pkgs.oh-my-posh
        pkgs.fish
        pkgs.fd
      ];
      
      fonts.packages = with pkgs; [
        pkgs.jetbrains-mono
        nerd-fonts.jetbrains-mono
      ];

      homebrew =  {
        enable = true;
        brews = [
          "mas"
        ];
        casks = [
          "firefox"
          "google-chrome"
          "deluge"
          "orbstack"
          "bitwarden"
          "iina"
          "visual-studio-code"
          "hyper"
          "cursor"
          "jetbrains-toolbox"
          "trae"
          "notion"
        ];
        masApps = {
          "Tailscale" = 1475387142;
          "Amphetamine" = 937984704;
          "Numbers" = 409203825;
          "Pages" = 409201541;
          "Keynote" = 409183694;
          "Magnet" = 441258766;
          "1Blocker" = 1365531024;
          "Affinity Designer" = 824171161;
          "Affinity Photo" = 824183456;
          "Baking Soda" = 1601151613;
          "PhotoBulk" = 537211143;
          "PasteNow" = 1552536109;
          "Xnip" = 1221250572;
          "Elmedia Video Player" = 1044549675;
          "SnippetsLab" = 1006087419;
        };
        onActivation.cleanup = "zap";
        onActivation.autoUpdate = true;
        onActivation.upgrade = true;
      };

      system.activationScripts.applications.text = let
        env = pkgs.buildEnv {
          name = "system-applications";
          paths = config.environment.systemPackages;
          pathsToLink = "/Applications";
        };
      in
        pkgs.lib.mkForce ''
        # Set up applications.
        echo "setting up /Applications..." >&2
        rm -rf /Applications/Nix\ Apps
        mkdir -p /Applications/Nix\ Apps
        find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
        while read -r src; do
          app_name=$(basename "$src")
          echo "copying $src" >&2
          ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
        done
            '';

      networking = {
        dns = [
          "8.8.8.8"
          "8.8.4.4"
        ];
        knownNetworkServices = [
          "Wi-Fi"
          "Ethernet Adaptor"
          "Thunderbolt Ethernet"
          "Thunderbolt Bridge"
          "Tailscale"
        ];
      };

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

      # Security changes
      security.pam = {
        services = {
          sudo_local = {
            touchIdAuth = true;
          };
        };
      };

      # Change macOS Settings
      system.defaults = {
        dock = {
          autohide = false;
          show-recents = false;
          magnification = true;
          minimize-to-application = true;
          tilesize = 32;
          largesize = 96;
          persistent-apps = [
            "/System/Applications/Launchpad.app"
            {
              spacer = {
                small = false;
              };
            }
            "/Applications/Safari.app"
            "/Applications/Zen.app"
            "/System/Applications/Mail.app"
            "/System/Applications/Calendar.app"
            {
              spacer = {
                small = false;
              };
            }
            "/Applications/Cursor.app"
            "/Applications/Hyper.app"
            {
              spacer = {
                small = false;
              };
            }
          ];
          persistent-others = [
            "/Users/${user}/Developer"
            "/Users/${user}/Downloads"
          ];
        };

        trackpad = {
          Clicking = true;
          TrackpadRightClick = true;
          TrackpadThreeFingerDrag = true;
        };

        finder = {
          FXPreferredViewStyle = "clmv";
          FXRemoveOldTrashItems = true;
          NewWindowTarget = "Computer";
          ShowPathbar = true;
          ShowStatusBar = true;
        };

        
        loginwindow = {
          GuestEnabled = false;
        };

        controlcenter = {
          BatteryShowPercentage = true;
          Bluetooth = true;
          Sound = true;
        };

        menuExtraClock = {
          Show24Hour = true;
          ShowDate = 1;
        };

        NSGlobalDomain = {
          AppleICUForce24HourTime = true;
          AppleInterfaceStyle = "Dark";
          AppleMeasurementUnits = "Centimeters";
          AppleMetricUnits = 1;
          AppleTemperatureUnit = "Celsius";
          AppleWindowTabbingMode = "always";
          PMPrintingExpandedStateForPrint = true;
          KeyRepeat = 2;
        };

        screencapture = {
          type = "jpg";
          target = "clipboard";
        };

        screensaver = {
          askForPassword = true;
          askForPasswordDelay = 30;
        };

        SoftwareUpdate = {
          AutomaticallyInstallMacOSUpdates = true;
        };
      };

      # Necessary for using flakes on this system.
      nix.settings = {
        experimental-features = "nix-command flakes";
      };

      # Enable Fish shell
      programs.fish = {
        enable = true;
        interactiveShellInit = ''
          # Set up Fish configuration
          set -gx FISH_CONFIG_DIR ~/.config/fish
          
          # Source Fish configuration
          if test -f $FISH_CONFIG_DIR/config.fish
            source $FISH_CONFIG_DIR/config.fish
          end
        '';
      };

      # Enable VS Code
      programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
          bbenoist.nix
          ms-vscode.cpptools
          ms-vscode.vscode-typescript-next
          dbaeumer.vscode-eslint
          esbenp.prettier-vscode
        ];
      };

      # Enable alternative shell support in nix-darwin.
      # programs.zsh.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."mac".pkgs;

    # Home Manager configuration
    homeConfigurations."${user}" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        ./dotfiles/darwin/git
        {
          home.packages = with pkgs; [
            fish
            fzf
            fd
            eza
            zoxide
            bat
          ];
          
          # Set Fish as the default shell
          home.sessionVariables = {
            SHELL = "${pkgs.fish}/bin/fish";
          };
          
          # Copy Fish configuration files
          home.file.".config/fish/config.fish" = {
            source = ./dotfiles/fish/config.fish;
          };
          
          home.file.".config/fish/functions/fzf_preview.fish" = {
            source = ./dotfiles/fish/functions/fzf_preview.fish;
          };
          
          home.file.".config/fish/functions/fzf_fish_custom_key_bindings.fish" = {
            source = ./dotfiles/fish/functions/fzf_fish_custom_key_bindings.fish;
          };
          
          home.file.".config/fish/functions/zoxide_fish.fish" = {
            source = ./dotfiles/fish/functions/zoxide_fish.fish;
          };
        }
      ];
    };
  };
} 