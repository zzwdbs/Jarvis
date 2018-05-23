# Init brew repo
brew tap buo/cask-upgrade caskroom/cask caskroom/fonts heroku/brew homebrew/core homebrew/python homebrew/science homebrew/services homebrew/versions
brew update
brew upgrade -y

# Install brew stuff
brew reinstall git autojump docker-clean heroku libpng mono nginx node postgresql redis yarn wget python python3 sqlmap taglib tree ccat archey colordiff stormssh htop ffmpeg

# Install brew cask stuff
brew cask reinstall qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize qlvideo quicklookapk qladdict betterzip neteasemusic teamviewer google-chrome slack lingon-x shadowsocksx-ng appzapper iterm2 scroll-reverser dash unity postico rowanj-gitx alfred docker visual-studio-code alarm-clock lyricsx qq nylas-mail kitematic db-browser-for-sqlite jupyter-notebook-ql oversight vlc vox font-source-code-pro-for-powerline font-fira-code google-cloud-sdk usage p4merge sketch now

# Install brew cask stuff (optional)
# brew cask reinstall wireshark texmaker mactex skype spotify appcode clion pycharm webstorm clip-studio-paint telegram insomnia kaleidoscope burp-suite

# Cleanup
brew cleanup
brew cask cleanup

# Download zsh plugins
git clone https://github.com/zdharma/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions