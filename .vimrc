" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins:
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" General configuration
set number
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
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="72,".join(range(120,999),",")
" Configuration for plugins
" Fugitive statusline
set statusline +=\ %{fugitive#statusline()}
" Opens NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
" Sets the airline theme
let g:airline_theme='papercolor'
