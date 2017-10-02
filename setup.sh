# Clone Oh-my-zsh repository
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell to zsh
chsh -s /bin/zsh

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

# source nvm
. ~/.nvm/nvm.sh

# install latest node version
nvm install node

# tell nvm to use latest node version
nvm use node

# install yarn
brew install yarn --without-node

#install pure prompt
npm i -g pure-prompt

# install software
brew cask install \
  betterzipql\
  cyberduck\
  github-desktop\
  google-chrome\
  handbrake\
  imageoptim\
  iterm2\
  private-internet-access\
  qlcolorcode\
  qlimagesize\
  qlmarkdown\
  qlprettypatch\
  qlstephen\
  quicklook-csv\
  quicklook-json\
  sketch \
  slack\
  spectacle\
  suspicious-package\
  transmission\
  visual-studio-code\
  vlc\
  webpquicklook\
