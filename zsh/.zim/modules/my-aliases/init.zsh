# kubernetes aliases
alias k="kubectl"
[[ $commands[kubectl] ]] && source <(kubectl completion zsh) # add autocomplete permanently to your zsh shell

alias dr="--dry-run=client -o yaml" 
alias now="--force --grace-period 0"

# pulumi
alias p="pulumi"
alias pp="pulumi preview"

# terrform
alias tf="terraform"

alias cat="batcat"

alias ls="eza --icons=always"
alias ll="eza -l --icons=always"
