call plug#begin()
    Plug 'cacharle/c_formatter_42.vim'
call plug#end()

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


"	SPAWN TERMINAL
nnoremap <leader>t <cmd>terminal<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>x <C-\><C-n>


"	BETTER EXPLORER
nnoremap <leader>e <cmd>Ex<CR>
autocmd  FileType netrw nnoremap <buffer> <leader>e <cmd>bd<cr>


"	NO HIGHLIGHT
nnoremap <leader>x <cmd>nohl<CR>


"	BETTER QUITE AND REWRITE
nnoremap <leader>qq <cmd>q<CR>
nnoremap <leader>ww <cmd>w<CR>

"	BUFFRS
nnoremap <tab> <cmd>bn<CR>
nnoremap <S-tab> <cmd>bp<CR>

"	WINDOWS JUMPS
nnoremap <leader>1 <cmd>1wincmd<CR>
nnoremap <leader>2 <cmd>2wincmd<CR>
nnoremap <leader>3 <cmd>3wincmd<CR>
nnoremap <leader>4 <cmd>4wincmd<CR>

"	WINDOW MOTION
nnoremap <leader>wn <C-W>j
nnoremap <leader>we <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wi <C-W>l
nnoremap <leader>wo <C-W>o

"	WINDOWS ACTION
nnoremap <leader>wt <C-W>T
nnoremap <leader>nw <C-W><C-N>
nnoremap <leader>wN <C-W>J
nnoremap <leader>wE <C-W>K
nnoremap <leader>wI <C-W>L
nnoremap <leader>wH <C-W>H

"	WINDOWS SPLIT
nnoremap <leader>wsv <cmd>vsplit<CR>
nnoremap <leader>wsh <cmd>split<CR>

nnoremap vi vi

set showcmd
set rnu
set background=dark     " Set to dark/light depending on theme
set encoding=utf-8      " Always use UTF-8
set clipboard=unnamedplus    " Use system clipboard
set mouse=a                  " Enable mouse support
set nowrap              " Don't wrap long lines
set laststatus=2        " Always show the statusline
set wildmenu            " Enhanced command-line completion
set lazyredraw          " Faster scrolling

set autoindent
set tabstop=4
set shiftwidth=4        " Indentation size for autoindents
set noexpandtab		" Dont convert to spaces
set softtabstop=4       " Number of spaces for editing <Tab>
set smartindent         " Automatically inserts extra indent on new line

set ignorecase          " Case-insensitive search...
set smartcase           " ...unless uppercase letter is used
set incsearch           " Show match while typing
set hlsearch            " Highlight all matches
 

autocmd FileType netrw nnoremap <buffer> <leader>e <cmd>bd<cr>
nnoremap <leader>tmp i #include<unistd.h><CR>int main(int argc, char **argv)<CR>{<CR>}<CR>
syntax on

