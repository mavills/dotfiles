## dotfiles
Packages:
| package | Use | Notes |
|:--------|-----|-------|
| **i3**  | Window Manager | tiling windows |
| **st**  | Terminal | Copy pasta does not work properly |
| **zsh** | Shell |-|
| **bash**| Unused Shell | Only in case of emergency |
| **vim** | Editor (of course) | - |
| **oh-my-zsh** | Better zsh management | works with powerline9k |

### Install:
temp: 
  cd ~
  sudo apt-get install git stow i3 i3blocks vim xorg libxft-dev zsh fonts-hack-ttf feh compton
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
  
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
  git clone https://git.suckless.org/st
  cd st
  sudo make clean install

  log out and log back in
  
  
1. `sudo apt-get install [needed packages]` (TODO)
2. `sudo apt-get install stow` (manage packages with stow)
3. clone this repo in `~/dotfiles/`
4. `cd ~/dotfiles`
5. `stow *`
