syntax enable

"set relativenumber
set cmdheight=2
set autoindent
set hidden
set noerrorbells
set nowrap
set smarttab
set expandtab
set autoindent
"set cursorline
set smartcase
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set number
set encoding=utf-8
set fileencoding=utf-8
set noshowmode
set nobackup
set clipboard=unnamedplus
highlight clear LineNr
set background=dark
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

"TODO: map keys for coc code navigation:
"coc-definition
"coc-type-definition
"coc-implementation
"coc-references
"better mappings for coc explorer

inoremap jk <Esc>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <leader>gd <Plug>(coc-definition)
nnoremap <leader>gy <Plug>(coc-type-definition)
nnoremap <leader>gi <Plug>(coc-implementation)
nnoremap <leader>gr <Plug>(coc-references)
nnoremap <silent> <A-w> :w<CR>
nnoremap <silent> <space>e :CocCommand explorer<CR>
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

