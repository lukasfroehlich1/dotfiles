#!/usr/bin/env bash

# Ask for password before starting
sudo -v

# Install command-line tools using Homebrew.
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
sudo sh -c 'echo "/usr/local/bin/bash" >> /etc/shells'

brew install bash
brew tap homebrew/versions
brew install bash-completion

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

brew install luajit
# Install more recent versions of some macOS tools.
brew install vim --with-luajit --with-override-system-vi

brew install homebrew/dupes/grep

# Install other useful binaries.
brew install ack
brew install git
brew install python3
brew install node
brew install yarn


# Install cask apps
brew cask install karabiner-elements
brew cask install slate
brew cask install beardedspice
brew cask install google-chrome
brew cask install spotify
brew cask install alfred
brew cask install flux


# Remove outdated versions from the cellar.
brew cleanup


# open apps meant to stay open
open /Applications/Slate.app
open /Applications/Flux.app
open /Applications/BeardedSpice.app
