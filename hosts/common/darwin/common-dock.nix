{ config, ... }:
{
  users.users.tutods.home = "/Users/tutods";

  system.defaults.dock = {
    # persistent-apps = [
    #   "/Applications/Google Chrome.app"
    #   "/Applications/Firefox.app"
    #   "/Applications/Telegram.app"
    #   "/Applications/Signal.app"
    #   "/Applications/Discord.app"
    #   "/Applications/Slack.app"
    #   "/Applications/Ivory.app"
    #   "/Applications/Obsidian.app"
    #   "/Applications/Fantastical.app"
    #   "/Applications/Visual Studio Code.app"
    #   "/Applications/Spotify.app"
    #   "/Applications/Plexamp.app"
    #   "/Applications/Ghostty.app"
    # ];
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
      "/Applications/Visual Studio Code.app"
      "/Applications/Hyper.app"
      {
        spacer = {
          small = false;
        };
      }
    ];
    persistent-others = [
      "$HOME/Downloads"
      "$HOME/Developer"
    ];
  };
}
