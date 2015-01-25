#!/bin/sh
brew update || true
brew upgrade || true

brew tap homebrew/binary || true
brew tap homebrew/versions || true
brew tap homebrew/dupes || true

brew tap caskroom/cask || true
brew tap caskroom/versions || true

brew tap josegonzalez/homebrew-php || true

brew install zsh || true
brew install wget || true
brew install curl || true
brew install git || true
brew install python3 || true
brew install openssl || true
brew install readline || true
brew install rbenv || true
brew install ruby-build || true
brew install php55 || true
brew install groovy || true
brew install gradle || true
brew install scala || true
brew install sbt || true
brew install typesafe-activator || true
brew install nodebrew || true

brew install brew-cask || true

brew cleanup || true

brew cask install mi || true
brew cask install java6 || true
brew cask install java7 || true
brew cask install java || true
brew cask install iterm2 || true
brew cask install emacs || true
brew cask install virtualbox || true
brew cask install boot2docker || true
brew cask install karabiner || true
brew cask install intellij-idea || true

brew cask install cocoapacketanalyzer || true

brew cask install google-chrome || true
brew cask install firefox || true
brew cask install skype || true
brew cask install adobe-reader || true
brew cask install openoffice || true
brew cask install gimp || true
brew cask install xmind || true
brew cask install miro || true
brew cask install slack-beta || true

brew cask cleanup || true
