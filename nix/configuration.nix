{ pkgs, lib, ... }:
{
    nix.binaryCaches = [
        "https://cache.nixos.org/"
    ];
    security.pam.enableSudoTouchIdAuth = true;
}