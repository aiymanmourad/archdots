syntax enable

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
set relativenumber
set noswapfile
set clipboard=unnamedplus
set termguicolors
set background=dark
set t_Co=256    
highlight clear LineNr

"=======================================================
"		      Vim Plug
"=======================================================

" initalize plugins
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'junegunn/goyo'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'sainnhe/forest-night'
Plug 'junegunn/vim-easy-align'
"Plug 'yuttie/comfortable-motion.vim'


call plug#end()

colorscheme forest-night
"=======================================================
"		      Bindings
"=======================================================

" map leader
let mapleader = ";"

" switch between buffers
nnoremap <silent> <leader>n :bn<CR>
nnoremap <silent> <leader>p :bp<CR>
nnoremap <silent> <leader>d :bd<CR>

" escape is probably the worst vim mapping
inoremap jk <Esc> 

noremap [ {
" autocomplete 
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" fzf
nnoremap <silent> <leader>pf :Files<CR>

" coc
nnoremap <leader>d <Plug>(coc-definition)
nnoremap <leader>y <Plug>(coc-type-definition)
nnoremap <leader>i <Plug>(coc-implementation)
nnoremap <leader>r <Plug>(coc-references)
nnoremap <silent> <leader>e :CocCommand explorer<CR>

" saving and qutting vim
nnoremap <silent> <leader>t :wq<CR>
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>z :q!<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nnoremap ga <Plug>(EasyAlign)
"=======================================================
"		     Configuration 
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
let g:airline#extensions#tabline#formatter = 'jsformatter'

"if exists('+termguicolors')
  "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  "set termguicolors
"endif
