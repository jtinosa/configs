source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
eval "$(starship init zsh)"
export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com    .apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/boots    trap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
#aliases
alias android="./android.sh"
alias web="./web.sh"
alias vscode="./vscode.sh"
alias xcode="./xcode.sh"
alias vs="./vs.sh"
alias godot="./godot.sh"
alias ls="eza -1"
alias lt="eza --tree -L 1"
alias f="fzf --preview 'cat {}'"
alias j="z"
alias sz="source .zshrc"
alias config="vim .zshrc"
eval "$(zoxide init zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
echo -ne '\e[6 q'
