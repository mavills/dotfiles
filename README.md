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
1. `sudo apt-get install [needed packages]` (TODO)
2. `sudo apt-get install stow` (manage packages with stow)
3. clone this repo in `~/dotfiles/`
4. `cd ~/dotfiles`
5. `stow *`
