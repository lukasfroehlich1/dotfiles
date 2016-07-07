
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

alias vim='/usr/local/bin/vim'
alias sshfs='/usr/local/my/sshfs'
alias python='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
alias sql='mysql -u root -p'
alias sqlpi='mysql -u cera -p -h playground.ro.lt'
alias t='task'
alias ..='cd ..'
alias ghci='stack ghci'

PS1="\W $ "

export CLICOLOR=1
#export LSCOLORS=exgxcxdxcxegedabagacad
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PATH=$PATH:.:~/.local/bin 
export FONTCONFIG_PATH=/opt/X11/lib/X11/fontconfig

# Add GHC 7.10.3 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.3.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

test -f ~/.git-completion.bash && . $_

alias ack='ack --pager="less -FRSX"'
# alias ack='ACK_PAGER_COLOR="less -x4SRFX" /usr/bin/ack-grep -a'