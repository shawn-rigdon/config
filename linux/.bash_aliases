alias vi='nvim' #neovim shortcut
alias update='sudo apt-get update'
alias install='sudo apt-get install'
alias purge='sudo apt-get purge'
alias autorm='sudo apt-get autoremove'
alias docker_clean_imgs='docker rmi `docker images -f "dangling=true" -q`'
complete -F _complete_alias update
complete -F _complete_alias install
complete -F _complete_alias purge
complete -F _complete_alias autorm
