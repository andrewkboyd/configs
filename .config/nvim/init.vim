set number

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
end

autocmd!

" tab width
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" backspace
set backspace=indent,eol,start

" set listchars
set list
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\·

" leader key
let mapleader = "\<Space>"

" enable syntax highlighting
syntax enable

call plug#begin('~/.local/shared/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:deoplete#enable_at_startup = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

map <C-n> :Lexplore<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25
