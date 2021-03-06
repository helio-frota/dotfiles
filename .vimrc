" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins:
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'leafgarland/typescript-vim'
call plug#end()

" General configuration
set number
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2
set laststatus=2
set dir=/tmp
set nocompatible
set autoindent
set spell
set spelllang=en_us
set t_Co=256
syntax on
set background=dark
colorscheme PaperColor 
" let &colorcolumn="80,".join(range(120,120),",")
highlight jsFuncCall ctermfg=cyan
" Configuration for plugins
" Fugitive statusline
set statusline +=\ %{fugitive#statusline()}
" Opens NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
" Sets the airline theme
let g:airline_theme='papercolor'
" semistandard configs
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'
