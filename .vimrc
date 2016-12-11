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
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'justinmk/vim-sneak'
"Bundle 'mattn/emmet-vim'
"Bundle 'SirVer/ultisnips'
"Bundle 'Valloric/MatchTagAlways'
"Bundle 'kien/ctrlp.vim'
"Bundle 'davidhalter/jedi-vim'
"Bundle 'nanotech/jellybeans.vim'
"Bundle 'scrooloose/nerdtree'
"Bundle 'ervandew/supertab'
"Bundle 'scrooloose/syntastic'
"Bundle 'tomtom/tlib_vim'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'nvie/vim-flake8'
"Bundle 'tpope/vim-sensible'
"Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'terryma/vim-multiple-cursors'
"Bundle 'rhysd/clever-f.vim'
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'tpope/vim-fireplace'
"Bundle 'tpope/vim-classpath'=
"Bundle 'guns/vim-clojure-highlight'
Bundle 'vim-scripts/paredit.vim'
Bundle 'VimClojure'

"Vim Scripts
Bundle 'molokai'

set clipboard=unnamedplus

set noswapfile

colorscheme evening

"set t_Co=256

noremap ; l
noremap l k
noremap k j
noremap j h

set number
map <space> /

inoremap jk <esc>
inoremap kj <esc>

let vimclojure#FuzzyIndent=1

let vimclojure#HighlightBuiltins=1

let vimclojure#HighlightContrib=1

let vimclojure#DynamicHighlighting=1

let vimclojure#ParenRainbow=1

syntax on
filetype plugin indent on

set ruler
set smartcase
set ignorecase
set smartcase
set hlsearch

"python
"let python_highlight_all = 1

"colorscheme molokai

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"Custom leader and easymotion stuff
let mapleader = ","
"let g:sneak#streak = 1
"map <Leader> <Plug>(easymotion-prefix)
"nmap s <Plug>(easymotion-s2l)
"nmap t <Plug>(easymotion-t2l)

"Nerdtree mapping
"map <F7> :NERDTreeToggle<CR>
"map <Leader>n <plug>NERDTreeTabsToggle<CR>

"Shortcut fot closing tabs
map <C-m> :tabclose<CR>

map <C-j> :tabp<CR>
map <C-k> :tabn<CR>
map <C-h> :tabm -1<CR>
map <C-l> :tabm +1<CR>

map <CR> /

"Save and load folds automatically
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

"Disable auto commenting
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"let g:syntastic_javascript_checkers = ['jslint']
"let g:syntastic_javascript_checkers = ['jsl']

set nobackup

"Maximum line length
highlight OverLength ctermbg=grey ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

let &colorcolumn=join(range(101,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="100,".join(range(120,999),",")

"Clojure commands
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

"paredit
let g:paredit_mode = 0

set incsearch

"Remove whitespace on every write
autocmd BufWritePre * %s/\s\+$//e
