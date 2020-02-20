set nocompatible              " required
filetype off                  " required

set encoding=utf-8

" =================================
" " ====== Set the Leaderkey   ======
" " =================================
let mapleader = ","
let maplocalleader = "_"

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Plugin for base16 colors
Plugin 'chriskempson/base16-vim'
" Plugin for file explorer in vim
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" C/C++
Plugin 'valloric/youcompleteme'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Line numbers
set number

" Tab width
set tabstop=4
set shiftwidth=4

" Color scheme
let base16colorspace=256
"set t_Co=256
"set background=light
colorscheme base16-default-dark

" Setting for global YCM config
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" Don't ask for confirmation for running ycm configs
let g:ycm_confirm_extra_conf = 0

highlight YcmErrorSign guibg=#500000
highlight YcmErrorSection guibg=#A0A000

" Mappings:
map <C-n> :NERDTreeToggle<CR>
noremap <Leader>f :YcmCompleter Format<CR>
