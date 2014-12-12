#!/bin/sh

if type brew; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" 2>&1 | tee /tmp/homebrew-install.log
  brew tap homebrew/science
  brew install caskroom/cask/brew-cask
  brew install wget
  brew install git
  brew install svn
  brew install mvn
  brew install ant
  brew install ssh-copy-id
  brew install ruby
  brew install scala
  brew install python
  brew install pass
  brew install android-sdk
  brew install pidcat
  brew install tmux
  brew install macvim
  brew install npm
  brew install lua
  brew install luarocks

  brew cask install google-chrome
  brew cask install mjolnir
else
    echo "homebrew not found"
fi
