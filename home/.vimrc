set t_Co=256

noremap ; l
noremap l k
noremap k j
noremap j h

set number
map <space> /

inoremap jk <esc>
inoremap kj <esc>

execute pathogen#infect()
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
