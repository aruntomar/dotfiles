# kubernetes aliases
alias k="kubectl"
alias kc="k create"
alias kg="k get"
alias ksc="k config set-context --current --namespace"
alias kgc="k config get-contexts"
alias kuc="k config use-context"
alias ke="k explain"
alias kgp="k get pods"
alias kga="k get all"
alias kd="k describe"
alias kdel="k delete"
[[ $commands[kubectl] ]] && source <(kubectl completion zsh) # add autocomplete permanently to your zsh shell

export dr="--dry-run=client -o yaml"
export now="--force --grace-period 0"

# pulumi
alias p="pulumi"
alias pp="pulumi preview"

# terrform
alias tf="terraform"

alias cat="bat"

alias ls="eza --icons=always"
alias ll="eza -l --icons=always"

export PATH="/home/arun/.local/bin:$PATH"
