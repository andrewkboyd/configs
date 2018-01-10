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
call plug#end()

let g:deoplete#enable_at_startup = 1
