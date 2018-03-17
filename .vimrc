"open new file: E37: No write since last change (add ! to override) 
set hidden
set pastetoggle=<F2>
set showmode
syntax on
filetype plugin indent on

set expandtab
set shiftwidth=4

set tabstop=4
set softtabstop=4
"set softtabstop=2

set ruler
set nosol

" do this first
" mkdir ~/.vim ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
"Turn on backup option
set backup
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

