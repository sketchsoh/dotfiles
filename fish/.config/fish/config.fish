# if status is-interactive
#     eval (zellij setup --generate-auto-start fish | string collect)
# end

source /usr/share/cachyos-fish-config/cachyos-config.fish

abbr --add z cd
abbr --add zi cdi
abbr --add cl clear
abbr --add v nvim
abbr --add l ls -lah --git --git-repos --no-user --time-style relative --no-permissions
abbr --add lg lazygit
abbr --add ff fastfetch
abbr --add vi nvim
alias cat='bat'

function px
    paru -Qq | fzf -m \
        --style full \
        --layout reverse \
        --border \
        --padding 1,2 \
        --border-label ' Remove Package ' \
        --input-label ' Search ' \
        --header-label ' Package Info ' \
        --bind 'result:transform-list-label:if [[ -z $FZF_QUERY ]]; then echo " $FZF_MATCH_COUNT packages "; else echo " $FZF_MATCH_COUNT matches for [$FZF_QUERY] "; fi' \
        --bind 'focus:transform-preview-label:[[ -n {} ]] && printf " Previewing [%s] " {}' \
        --preview 'bash -c "bat --color=always --language=yaml <(paru -Qi {1} 2>/dev/null | grep -e \"Install Reason\"; echo \"\") --language=yaml <(paru -Si {1} 2>/dev/null) --language=bash <(paru -Fl {1} 2>/dev/null | awk '"'"'NR>0{print $2}'"'"')"' \
        | xargs -ro paru -Rsn
end

function pi
    paru -Sy &>/dev/null
    paru -Slq | fzf -m \
        --style full \
        --layout reverse \
        --border \
        --padding 1,2 \
        --border-label ' Install Package ' \
        --input-label ' Search ' \
        --header-label ' Package Info ' \
        --bind 'result:transform-list-label:if [[ -z $FZF_QUERY ]]; then echo " $FZF_MATCH_COUNT packages "; else echo " $FZF_MATCH_COUNT matches for [$FZF_QUERY] "; fi' \
        --bind 'focus:transform-preview-label:[[ -n {} ]] && printf " Previewing [%s] " {}' \
        --preview 'bash -c "bat --color=always --language=yaml <(paru -Qi {1} 2>/dev/null | grep -e \"Install Reason\"; echo \"\") --language=yaml <(paru -Si {1} 2>/dev/null) --language=bash <(paru -Fl {1} 2>/dev/null | awk '"'"'NR>0{print $2}'"'"')"' \
        | xargs -ro paru -S
end

function pu
    paru -Sy &>/dev/null
    paru -Qu 2>/dev/null | fzf -m \
        --style full \
        --layout reverse \
        --border \
        --padding 1,2 \
        --border-label ' Available Updates ' \
        --input-label ' Search ' \
        --header-label ' Package Info ' \
        --with-nth 1 \
        --delimiter ' ' \
        --bind 'result:transform-list-label:if [[ -z $FZF_QUERY ]]; then echo " $FZF_MATCH_COUNT updates "; else echo " $FZF_MATCH_COUNT matches for [$FZF_QUERY] "; fi' \
        --bind 'focus:transform-preview-label:[[ -n {} ]] && printf " Previewing [%s] " {1}' \
        --bind 'focus:transform-header:echo {1} {2} {3} {4}' \
        --preview 'bash -c "bat --color=always --language=yaml <(paru -Qi {1} 2>/dev/null | grep -e \"Install Reason\"; echo \"\") --language=yaml <(paru -Si {1} 2>/dev/null) --language=bash <(paru -Fl {1} 2>/dev/null | awk '"'"'NR>0{print $2}'"'"')"' \
        | awk '{print $1}' | xargs -ro paru -S
end
# FZF SETTINGS

# FZF colours to use catppuccin-macchiato
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#363A4F,bg:#24273A,spinner:#F4DBD6,hl:#ED8796 \
--color=fg:#CAD3F5,header:#ED8796,info:#C6A0F6,pointer:#F4DBD6 \
--color=marker:#B7BDF8,fg+:#CAD3F5,prompt:#C6A0F6,hl+:#ED8796 \
--color=selected-bg:#494D64 \
--color=border:#6E738D,label:#CAD3F5"

fzf_configure_bindings --directory=\cf --variables=\e\cv

set fzf_preview_dir_cmd eza -lah --color=always

set fzf_directory_opts --style full \
    --border --padding 1,2 \
    --border-label ' Searching File ' --input-label ' Input ' --header-label ' File Type ' \
    --bind 'result:transform-list-label:
        if [[ -z $FZF_QUERY ]]; then
          echo " $FZF_MATCH_COUNT items "
        else
          echo " $FZF_MATCH_COUNT matches for [$FZF_QUERY] "
        fi
        ' \
    --bind 'focus:transform-preview-label:[[ -n {} ]] && printf " Previewing [%s] " {}' \
    --bind 'focus:+transform-header:file --brief {} || echo "No file selected"' \
    --bind 'ctrl-r:change-list-label( Reloading the list )+reload(sleep 2; git ls-files)'

set fzf_history_opts --style full \
    --border --padding 1,2 \
    --border-label ' Searching History ' --input-label ' Input '

set fzf_processes_opts --style full \
    --border --padding 1,2 \
    --border-label ' Searching Processes ' --input-label ' Input '

set fzf_variables_opts --style full \
    --border --padding 1,2 \
    --border-label ' Searching Variables ' --input-label ' Input '

set fzf_git_log_opts --style full \
    --border --padding 1,2 \
    --border-label ' Searching Git Logs ' --input-label ' Input '

set fzf_git_status_opts --style full \
    --border --padding 1,2 \
    --border-label ' Searching Git Status ' --input-label ' Input '

set fzf_diff_highlighter delta --paging=never --width=20

# Set LS colours to catppuccin-macchiato

set -Ux LS_COLORS $(vivid generate catppuccin-macchiato)

# Start Shell with Zellij

zoxide init --cmd cd fish | source
pay-respects fish --alias | source

set -gx PATH /opt/cuda/bin $PATH
set -gx LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
set -gx PATH ~/llama.cpp/build/bin $PATH

function starship_transient_prompt_func
    starship module character
end
starship init fish | source
enable_transience
