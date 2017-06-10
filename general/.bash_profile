[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

alias python='/usr/local/bin/python3'
alias ls='ls --color'
alias pip='/usr/local/bin/pip3'
alias ..='cd ..'
alias ghci='stack ghci'
alias pip='pip3'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
} 

PS1="\W\$(parse_git_branch) $ "


PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH=$PATH:.

export FONTCONFIG_PATH=/opt/X11/lib/X11/fontconfig

# Add GHC 7.10.3 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.3.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias ack='ack --pager="less -FRSX"'
# alias ack='ACK_PAGER_COLOR="less -x4SRFX" /usr/bin/ack-grep -a'
