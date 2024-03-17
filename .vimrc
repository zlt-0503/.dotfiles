"   _______   _______ _      __      _______ __  __ _____   _____ 
"  |___  / | |__   __( )     \ \    / /_   _|  \/  |  __ \ / ____|
"     / /| |    | |  |/ ___   \ \  / /  | | | \  / | |__) | |     
"    / / | |    | |    / __|   \ \/ /   | | | |\/| |  _  /| |     
"   / /__| |____| |    \__ \    \  /   _| |_| |  | | | \ \| |____ 
"  /_____|______|_|    |___/     \/   |_____|_|  |_|_|  \_\\_____|
"                                                                 

" System
set mouse=a
set encoding=utf-8
syntax enable
syntax on

" Row number
set number
set norelativenumber

" Searching Options
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set nocompatible

" Prevent auto line split
set wrap 
set tw=0
set indentexpr=

set laststatus=2
set autochdir
set showcmd
set formatoptions-=tc

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu
set wildmode=longest,list,full
set whichwrap+=<,>,[,],h,l
set clipboard=unnamed

"Restore Cursor Position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Better backspace
set backspace=indent,eol,start

" Better tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
" set list
set scrolloff=5

" Set <LEADER> as <SPACE>
let mapleader=" "

" noremap 更改键位
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

" Search
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

" Save & quit
map s <nop> 
" Save
map S :w<CR> 
" Save and quit
map Q :wq<CR> 
" Reload vim
map R :source R $MYVIMRC<CR> 
" Use ';' to enter command mode
map ; :

" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!time python3 %"
  elseif &filetype == 'html'
    exec "!start C:\Program Files\Google\Chrome\Application\chrome.exe"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  endif
endfunc

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

map tt :NERDTreeToggle<CR>

