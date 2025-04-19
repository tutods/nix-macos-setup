# FZF preview function for Fish

function __fzf_preview
  set -l preview_cmd $argv[1]
  set -l query $argv[2]
  
  if test -z "$query"
    return
  end
  
  eval "$preview_cmd $query"
end

# Function to handle FZF preview for directories
function __fzf_preview_directory
  __fzf_preview "eza --color=always --icons" $argv
end

# Function to handle FZF preview for zoxide
function __fzf_z_preview
  __fzf_preview "eza --color=always --icons" $argv
end

# Function to handle FZF preview for files
function __fzf_preview_file
  if test -f $argv
    if type -q bat
      bat --color=always --style=numbers --line-range=:500 $argv
    else
      head -n 500 $argv
    end
  else if test -d $argv
    eza --color=always --icons $argv
  end
end 