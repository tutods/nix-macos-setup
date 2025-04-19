{...}:

{
  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
      upgrade = true;
    };
    global.autoUpdate = true;

    brews = [
      "mas"
      "consize"
      "webp"
    ];
    casks = [
      "firefox"
      "google-chrome"
      "qbittorrent"
      "orbstack"
      "bitwarden"
      "iina"
      "visual-studio-code"
      "hyper"
      "cursor"
      "jetbrains-toolbox"
      "trae"
      "hyper"
      "windsurf"
      "notion"
      "jordanbaird-ice"
      "orbstack"
      
      # ----
      # "screenflow"
      # "cleanshot"
      # "adobe-creative-cloud"
      # #"nikitabobko/tap/aerospace"
      # "alacritty"
      # "alcove"
      # "audacity"
      # #"balenaetcher"
      # "bambu-studio"
      # "bentobox"
      # #"clop"
      # "discord"
      # "displaylink"
      # #"docker"
      # "element"
      # "elgato-camera-hub"
      # "elgato-control-center"
      # "elgato-stream-deck"
      # "firefox"
      # "flameshot"
      # "font-fira-code"
      # "font-fira-code-nerd-font"
      # "font-fira-mono-for-powerline"
      # "font-hack-nerd-font"
      # "font-jetbrains-mono-nerd-font"
      # "font-meslo-lg-nerd-font"
      # "ghostty"
      # "google-chrome"
      # "iina"
      # "istat-menus"
      # "iterm2"
      # "jordanbaird-ice"
      # "lm-studio"
      # "logitech-options"
      # "macwhisper"
      # "marta"
      # "mqtt-explorer"
      # "music-decoy" # github/FuzzyIdeas/MusicDecoy
      # "nextcloud"
      # "notion"
      # "obs"
      # "obsidian"
      # "ollama"
      # "omnidisksweeper"
      # "orbstack"
      # "openscad"
      # "openttd"
      # "plexamp"
      # "popclip"
      # "prusaslicer"
      # "raycast"
      # "signal"
      # "shortcat"
      # "slack"
      # "spotify"
      # "steam"
      # "tailscale"
      # "warp"
      # #"wireshark"
      # "viscosity"
      # "visual-studio-code"
      # "vlc"
      # # "lm-studio"

      # # # rogue amoeba
      # "audio-hijack"
      # "farrago"
      # "loopback"
      # "soundsource"
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
  };
}