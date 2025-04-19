# Main Fish configuration file

# Source all Fish functions
for file in ~/.config/fish/functions/*.fish
  source $file
end

# Enable case-insensitive completion
set -g fish_completion_case_insensitive 1

# Set up FZF for Fish
if type -q fzf
  # FZF key bindings
  fzf_key_bindings
  
  # FZF completion
  fzf_fish_custom_key_bindings
end

# Set up zoxide for Fish
zoxide_fish_setup

# Set up eza aliases
if type -q eza
  alias ls='eza --color=always --icons'
  alias ll='eza -l --color=always --icons'
  alias la='eza -la --color=always --icons'
  alias lt='eza --tree --color=always --icons'
end

# Set up fzf-tab equivalent functionality
function fish_user_key_bindings
  # FZF key bindings
  bind \ct '__fzf_find_file'
  bind \cr '__fzf_reverse_isearch'
  bind \ec '__fzf_cd'
  bind \eo '__fzf_open'
  bind \ev '__fzf_open --editor'
  bind \eg '__fzf_ghq'
  bind \ek '__fzf_kill_processes'
  bind \ex '__fzf_z'
end 