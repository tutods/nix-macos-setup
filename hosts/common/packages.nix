{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.yt-dlp
    pkgs.git
    pkgs.gh
    pkgs.htop
    pkgs.mkalias
    pkgs.bat
    pkgs.eza
    pkgs.fnm
    pkgs.fzf
    pkgs.zoxide
    pkgs.oh-my-posh
    pkgs.duf
    pkgs.fd
    pkgs.doppler
    pkgs.vscode
    pkgs.speedtest-cli

    # Image optimization tools
    pkgs.imagemagick
    pkgs.jpegoptim
    pkgs.optipng
    pkgs.ffmpeg
  ];

  fonts.packages = with pkgs; [
    pkgs.jetbrains-mono
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.fira-mono
  ]; 
}