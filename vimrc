let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

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
nnoremap <leader>qq <cmd>q<CR>
nnoremap <leader>ww <cmd>w<CR>


"	BUFFRS
nnoremap <tab> <cmd>bn<CR>
nnoremap <S-tab> <cmd>bp<CR>


" WINDOW
nnoremap <leader>wn <C-W>j
nnoremap <leader>we <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wi <C-W>l
nnoremap vi vi "colmak helper



set showcmd
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
autocmd FileType netrw nnoremap <buffer> <leader>e <cmd>bd<cr>
nnoremap <leader>tmp i #include<unistd.h><CR>int main(int argc, char **argv)<CR>{<CR>}<CR>
syntax on
