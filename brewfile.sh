#!/bin/sh
brew update
brew upgrade

brew tap homebrew/binary
brew tap homebrew/versions
brew tap homebrew/dupes

brew tap homebrew/php

brew tap caskroom/cask
brew tap caskroom/versions

brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install wget
brew install curl
brew install git
brew install python3
brew install openssl
brew install readline
brew install rbenv
brew install ruby-build
brew install php71
brew install groovy
brew install gradle
brew install maven
brew install scala
brew install sbt
brew install typesafe-activator
brew install google-app-engine
brew install heroku-toolbelt
brew install nodebrew

brew cleanup

brew cask install mi; brew cask update mi
brew cask install java6; brew cask update java6
brew cask install java7; brew cask update java7
brew cask install java; brew cask update java
brew cask install docker; brew cask update docker
brew cask install google-cloud-sdk; brew cask update google-cloud-sdk
brew cask install iterm2; brew cask update iterm2
brew cask install emacs; brew cask update emacs
brew cask install virtualbox; brew cask update virtualbox
brew cask install karabiner; brew cask update karabiner
brew cask install intellij-idea; brew cask update intellij-idea
brew cask install googleappengine; brew cask update googleappengine
brew cask install filezilla; brew cask update filezilla
brew cask install duet; brew cask update duet

brew cask install cocoapacketanalyzer; brew cask update cocoapacketanalyzer

brew cask install google-chrome; brew cask update google-chrome
brew cask install firefox-ja; brew cask update firefox-ja
brew cask install skype; brew cask update skype
brew cask install adobe-reader; brew cask update adobe-reader
brew cask install libreoffice; brew cask update libreoffice
brew cask install gimp; brew cask update gimp
brew cask install xmind; brew cask update xmind
brew cask install miro; brew cask update miro
#brew cask install asepsis; brew cask update asepsis
brew cask install kindle; brew cask update kindle
#brew cask install send-to-kindle; brew cask update send-to-kindle
brew cask install fitbit-connect; brew cask update fitbit-connect

brew cask cleanup
