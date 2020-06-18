syntax enable


"set relativenumber
"set cmdheight=2
set autoindent
set hidden
set mouse=a
set ruler
set nowrap
set smarttab
set expandtab
set autoindent
"set cursorline
set smartcase
set tabstop=4 softtabstop=4
set smartindent
set number
set encoding=utf-8
set fileencoding=utf-8
set noshowmode
set nobackup
set clipboard=unnamedplus
highlight clear LineNr

"=======================================================
"		      Vim Plug
"=======================================================

" initalize plugins
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'

call plug#end()


colorscheme nord
"=======================================================
"		      Bindings
"=======================================================


"normal mode mappings
nmap <silent> <space>e :CocCommand explorer<CR>
nmap <silent> <Tab> :bnext<CR>
nmap <silent> <S-Tab> :bprevious<CR>

"insert mode mappings
nnoremap <silent> <A-w> :w<CR>
nnoremap <silent> <A-e> :wq!<CR>
"=======================================================
"		      Vim Plug
"=======================================================

let g:coc_global_extensions = [
\   'coc-clangd',
\   'coc-go',
\   'coc-python',
\   'coc-rls',
\   'coc-json',
\   'coc-prettier',
\   'coc-pairs',
\   'coc-explorer',
\   'coc-css',
\   'coc-html',
\   'coc-actions',
\   'coc-marketplace',
\   'coc-sh',
\   'coc-julia',
\   'coc-eslint',
\   'coc-snippets',
\  ]



let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

