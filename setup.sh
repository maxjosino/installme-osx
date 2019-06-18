# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#!/usr/bin/env bash
brew install git
brew install git-flow
brew install nvm
brew install mas

# Install Cask
brew cask
brew tap caskroom/versions

# Install native apps
brew cask install dropbox 2> /dev/null
brew cask install figma 2> /dev/null
brew cask install firefox 2> /dev/null
brew cask install flux 2> /dev/null
brew cask install google-chrome 2> /dev/null
brew cask install sketch 2> /dev/null
brew cask install spotify 2> /dev/null
brew cask install slack 2> /dev/null
brew cask install zeplin 2> /dev/null

# Install fonts
brew tap caskroom/fonts
brew cask install font-fira-code 2> /dev/null

# Remove outdated versions from the cellar.
brew cleanup

### Set screenshots default folder to Downloads/screenshots
cd ~/Downloads
mkdir screenshots
defaults write com.apple.screencapture location ~/Downloads/screenshots
killall SystemUIServer
