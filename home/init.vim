" Configuration

" Vim plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-smooth-scroll'
call plug#end()

" display the absolute line number at the line you're on
set number

" Keep the line number gutter narrow so three digits is cozy. 
set numberwidth=2

" By default don't wrap lines
set nowrap

" But do wrap on these types of files...
autocmd FileType markdown setlocal wrap
autocmd FileType html setlocal wrap

let g:airline_theme='base16_tomorrow'
