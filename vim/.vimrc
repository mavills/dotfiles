set nocompatible              " required
filetype off                  " required

set noswapfile

set encoding=utf-8

" =================================
" " ====== Set the Leaderkey   ======
" " =================================
let mapleader = ","
let maplocalleader = "ù"

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Plugin for base16 colors and other themes
"Plugin 'chriskempson/base16-vim'
Plugin 'dracula/vim', {'name': 'dracula'}
" Plugin for file explorer in vim
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" C/C++
Plugin 'valloric/youcompleteme'

" Latex
Plugin 'lervag/vimtex'

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
"colorscheme base16-dracula
colorscheme dracula

" Setting for global YCM config
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" Don't ask for confirmation for running ycm configs
let g:ycm_confirm_extra_conf = 0

" (13) VimTex configuration
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
let g:tex_flavor = 'latex'
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'qf': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'mail': 1,
      \ 'julia': 1
      \}
noremap <LocalLeader>lv :VimtexView

if has('macunix')
    let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
    let g:vimtex_view_general_options = '-r @line @pdf @tex'
    let g:vimtex_fold_enabled = 0 "So large files can open more easily
elseif has('unix')
    let g:vimtex_view_method = 'zathura'
endif

highlight YcmErrorSign guibg=#500000
highlight YcmErrorSection guibg=#A0A000

" Mappings:
map <C-n> :NERDTreeToggle<CR>
noremap <Leader>f :YcmCompleter Format<CR>
