set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mattn/emmet-vim'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/MatchTagAlways'
Bundle 'kien/ctrlp.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'nvie/vim-flake8'
Bundle 'tpope/vim-sensible'
Bundle 'LeonmanRolls/secret-batman'

"Vim Scripts
Bundle 'molokai'


set t_Co=256

noremap ; l
noremap l k
noremap k j
noremap j h

set number
map <space> /

inoremap jk <esc>
inoremap kj <esc>

syntax on
filetype plugin indent on
filetype indent on

set ruler
set smartcase
set ignorecase
set smartcase
set hlsearch

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

"Enabling 256 color support

let python_highlight_all = 1

colorscheme molokai

set expandtab

"Nerdtree mapping
map <C-n> :NERDTreeToggle<CR>

"Shortcut fot closing tabs
map <C-m> :tabclose<CR>

"Save and load folds automatically
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

"Disable auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_javascript_checkers = ['jsl']
