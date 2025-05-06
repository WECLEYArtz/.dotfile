let mapleader = " "
let g:Arrows=v:false

"	ARROW TOGGLE FUNCTION
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

"	TOGGLE ARROWS
noremap  <leader>. <cmd>call ArrowsToggle()<cr>

"	BETTER UNDO
nnoremap U <C-r>

"	BETTER ESCAPE
noremap <leader>x <ESC><cmd>call ArrowsToggle(v:true)<cr>
inoremap <leader>x <ESC>

"	BETTER EXPLORER
nnoremap <leader>e <cmd>Ex<CR>
autocmd  FileType netrw nnoremap <buffer> <leader>e <cmd>bd<cr>

"	NO HIGHLIGHT
nnoremap <leader>no <cmd>nohl<CR>


"	BETTER QUITE AND REWRITE
nnoremap <leader>q <cmd>q<CR>
nnoremap <leader>w <cmd>w<CR>


" TABS
nnoremap <leader>tn <cmd>tabnew<CR>
nnoremap <leader>tx <cmd>tabclose<CR>
nnoremap <leader>ti <cmd>tabnext<CR>
nnoremap <leader>th <cmd>tabprevious<CR>



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
