{ lib, self, pkgs, ... }:

{
  programs.vscode.extensions =
    with pkgs.vscode-marketplace;
    [
      redhat.vscode-yaml
      chakrounanas.turbo-console-log
      meganrogge.template-string-converter
      bradlc.vscode-tailwindcss
      foxundermoon.shell-format
      alefragnani.project-manager
      yoavbls.pretty-ts-errors
      streetsidesoftware.code-spell-checker-portuguese
      christian-kohler.npm-intellisense
      bbenoist.nix
      unifiedjs.vscode-mdx
      bierner.github-markdown-preview
      yzane.markdown-pdf
      yzhang.markdown-all-in-one
      github.github-vscode-theme
      miguelsolorio.fluent-icons
      usernamehw.errorlens
      ms-azuretools.vscode-docker
      streetsidesoftware.code-spell-checker
      maximus136.change-string-case
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
      biomejs.biome
      aaron-bond.better-comments
      formulahendry.auto-complete-tag
      aliariff.auto-add-brackets
      pflannery.vscode-versionlens
      eamodio.gitlens
      wallabyjs.console-ninja
    ];
}