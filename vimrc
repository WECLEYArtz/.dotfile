let mapleader = " "
let g:Arrows=v:false

function! ArrowsToggle(...)
	if (a:0 && (type(a:1)==6) && (a:1 == g:Arrows))
		return
	endif
	if !g:Arrows
		nnoremap n <Down>
		vnoremap n <Down>

		nnoremap e <Up>
		vnoremap e <Up>

		nnoremap i <Right>
		vnoremap i <Right>

		set nocursorline
	else
		nunmap n
		vunmap n

		nunmap e
		vunmap e

		nunmap i
		vunmap i

		set cursorline
	endif
	let g:Arrows=!g:Arrows 
endfunction
call ArrowsToggle() "Toggle arrows to true;

noremap  <leader>. :call ArrowsToggle()<cr>
nnoremap U <C-r>

noremap <leader>x <ESC>:call ArrowsToggle(v:true)<cr>
inoremap <leader>x <ESC>

nnoremap <leader>e :Ex<CR>
nnoremap <leader>no :nohl<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>



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
