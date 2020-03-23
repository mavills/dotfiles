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
1.  clone this repo in `~/dotfiles/`
2.  `cd ~`
3.  `sudo apt-get install git stow i3 i3blocks vim xorg libxft-dev zsh fonts-hack-ttf feh compton build-essential cmake python3-dev`
4.  `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
5.  `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`
6.  `git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell`
7.  `git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins`
8.  `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`
9.  `~/.fzf/install`
10. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
11. `vim +PluginInstall +qall`
12. `python3 ~/.vim/bundle/youcompleteme/install.py --all`
13. `git clone https://git.suckless.org/st`
14. `cd st`
15. `sudo make clean install`
16. Install Hack Nerd Font Complete.ttf
17. `cd ~/dotfiles`
18. `stow bash .git .gitignore i3 oh-my-zsh st vim Xresources zsh --adopt`
19. `git checkout .`
20. `stow bash .git .gitignore i3 oh-my-zsh st vim Xresources zsh`
