let mapleader = " "
let g:Arrows=1

function! ArrowsToggle(par)
	if g:Arrows || a:par
		nnoremap n <Down>
		vnoremap n <Down>
		nnoremap e <Up>
		vnoremap e <Up>
		nnoremap i <Right>
		vnoremap i <Right>
		let g:Arrows=0
		echo "Arrows ON"
	else
		nunmap n
		vunmap n
		nunmap e
		vunmap e
		nunmap i
		vunmap i

		let g:Arrows=1
		echo "Arrows OFF"
	endif
endfunction

noremap  <leader>. :call ArrowsToggle()<cr>
nnoremap U <C-r>

noremap <leader>x <ESC> | :call ArrowsToggle(1)
inoremap <leader>x <ESC> | :call ArrowsToggle(1)

nnoremap <leader>e :Ex<CR>
nnoremap <leader>no :nohl<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>


call ArrowsToggle(1)

set rnu
set termguicolors       " Enable true color
set background=dark     " Set to dark/light depending on theme
set encoding=utf-8      " Always use UTF-8
set clipboard=unnamedplus    " Use system clipboard
set mouse=a                  " Enable mouse support
set nowrap              " Don't wrap long lines
set laststatus=2        " Always show the statusline
set wildmenu            " Enhanced command-line completion
set lazyredraw          " Faster scrolling

set shiftwidth=4        " Indentation size for autoindents
set softtabstop=4       " Number of spaces for editing <Tab>
set smartindent         " Automatically inserts extra indent on new line

set ignorecase          " Case-insensitive search...
set smartcase           " ...unless uppercase letter is used
set incsearch           " Show match while typing
set hlsearch            " Highlight all matches
colorscheme torte
