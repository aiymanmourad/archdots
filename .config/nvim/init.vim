syntax enable

set autoindent
set hidden
set nowrap
set smarttab
set expandtab
set smartindent
set number
set encoding=utf-8
set fileencoding=utf-8
set t_Co=256
set noshowmode
set background=dark


"=======================================================
"		      Vim Plug
"=======================================================

" initalize plugins
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'

call plug#end()

"=======================================================
"		      Bindings
"=======================================================

" toggle goyo
map <C-g> :Goyo<CR>

"toggle nerd tree
map <C-n> :NERDTreeToggle<CR>


"=======================================================
"		      Vim Plug
"=======================================================

function! NERDTreeHighlightFile(extension,fg,bg, guifg, guibg)
	exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg ='. a:bg .' ctermfg='. a:fg . ' guibg'. a:guibg .' guifg'. a:guifg
	exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+/.*'. a:extension . '$#'
endfunction

let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
