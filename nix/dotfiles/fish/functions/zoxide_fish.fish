# Zoxide integration for Fish

function zoxide_fish_setup
  if type -q zoxide
    # Initialize zoxide
    zoxide init fish | source
    
    # Set up FZF preview for zoxide
    function __zoxide_z_preview
      eza --color=always --icons $argv
    end
    
    # Create a custom z function with FZF preview
    function z
      set -l dir (zoxide query $argv | fzf --preview '__zoxide_z_preview {}')
      if test -n "$dir"
        cd $dir
      end
    end
    
    # Create a custom zi function for interactive directory selection
    function zi
      set -l dir (zoxide query -l | fzf --preview '__zoxide_z_preview {}' | awk '{print $2}')
      if test -n "$dir"
        cd $dir
      end
    end
  end
end 