# ~/.zshrc

[[ $- != *i* ]] && return 

alias ls='ls --color=auto' 
alias grep='grep --color=auto' 

autoload -Uz compinit 
compinit 

zstyle ':completion:*' menu select 
 
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 

zstyle ':completion:*' use-cache on 
zstyle ':completion:*' cache-path ~/.zsh-cache 

source /usr/share/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color=always $realpath'
zstyle ':fzf-tab:complete:*:*' fzf-preview '[[ -d $realpath ]] && ls --color=always $realpath || cat $realpath'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^[[C' forward-word

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=white,none'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=white,nonee'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=white,none'
ZSH_HIGHLIGHT_STYLES[alias]='fg=white,none'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=white,none'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'

PS1='%F{250}%m%f %F{245}%~%f %F{cyan}❯❯%f '

bindkey "\e[3~" delete-char

export PATH="$HOME/.local/bin:$PATH"

fastfetch 

alias root='sudo -i'
alias fetch='fastfetch'

alias expac-list-apps='expac -H M "%m %n" | sort -h'
alias clickon="input-remapper-control --command autoload"
alias clickoff="input-remapper-control --command stop-all"




