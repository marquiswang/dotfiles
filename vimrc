set nocompatible

filetype plugin indent on
filetype on

" Make backspace work
set backspace=indent,eol,start

" Autoindent
" set ai

" Syntax on by default
syntax on

" Line numbers
set number

" Soft tabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Move lines up and down
map <C-J> :m +1 <CR>
map <C-K> :m -2 <CR>

" Visual bell
set vb

" No highlight search, its annoying
set nohlsearch

" show matching brackets
set showmatch

" Custom statuc line
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

" Always display the status line
set laststatus=2

imap jj <ESC>
map tt :NERDTreeToggle<CR>

set runtimepath+=/usr/share/vim/addons

colors koehler

" Do not expand tabs for Makefiles
autocmd FileType make set noexpandtab

