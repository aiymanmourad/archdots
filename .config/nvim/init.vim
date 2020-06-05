syntax enable

set cmdheight=2
set autoindent
set hidden
set mouse=a
set ruler
set nowrap
set smarttab
set expandtab
set autoindent
"set cursorline
set smartindent
set number
set encoding=utf-8
set fileencoding=utf-8
set t_Co=256
set noshowmode
set nobackup
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
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


"testing

"=======================================================
"		      Bindings
"=======================================================


"normal mode mappings
nmap <space>e :CocCommand explorer<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

"insert mode mappings
nnoremap <silent> <A-w> :w<CR>
nnoremap <silent> <A-e> :wq!<CR>
nnoremap <silent> <A-q> <Esc>
"=======================================================
"		      Vim Plug
"=======================================================

let g:coc_global_extensions = [
\  'coc-clangd',
\  'coc-go',
\  'coc-python',
\  'coc-rls',
\  'coc-json',
\  'coc-prettier',
\  'coc-pairs',
\  'coc-explorer'
\  ]


function! NERDTreeHighlightFile(extension,fg,bg, guifg, guibg)
	exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg ='. a:bg .' ctermfg='. a:fg . ' guibg'. a:guibg .' guifg'. a:guifg
	exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+/.*'. a:extension . '$#'
endfunction

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
