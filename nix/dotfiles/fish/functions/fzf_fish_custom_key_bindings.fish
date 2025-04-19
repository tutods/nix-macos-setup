# Custom FZF key bindings for Fish

function fzf_fish_custom_key_bindings
  # Set up FZF preview options
  set -g FZF_CTRL_T_OPTS "--preview '__fzf_preview_file {}'"
  set -g FZF_ALT_C_OPTS "--preview '__fzf_preview_directory {}'"
  set -g FZF_CTRL_R_OPTS "--preview 'echo {}'"
  
  # Set up FZF default options
  set -g FZF_DEFAULT_OPTS "--height 40% --layout=reverse --border --preview '__fzf_preview_file {}'"
  
  # Set up FZF default command
  if type -q fd
    set -g FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
  else if type -q find
    set -g FZF_DEFAULT_COMMAND "find . -type f -not -path '*/\.*'"
  end
  
  # Set up FZF default directory command
  if type -q fd
    set -g FZF_ALT_C_COMMAND "fd --type d --hidden --follow --exclude .git"
  else if type -q find
    set -g FZF_ALT_C_COMMAND "find . -type d -not -path '*/\.*'"
  end
end 