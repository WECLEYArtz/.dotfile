"	OBSIDIAN VIM REMAPS

"	==================== NAVIGATION ====================

"	COLEMAK ARROW KEYS (Always on)

unmap ,
unmap <Space>

noremap n <Down>
noremap e <Up>
noremap i <Right>
vnoremap n <Down>
vnoremap e <Up>
vnoremap i <Right>


"	==================== FILE EXPLORER ====================

"	TOGGLE LEFT SIDEBAR (File Explorer)
nnoremap <Space>e :obcommand<Space>app:toggle-left-sidebar<CR>


"	==================== TAB SWITCHING ====================

"	NEXT TAB
nnoremap <tab> :obcommand<Space>workspace:next-tab<CR>

"	PREVIOUS TAB
nnoremap <S-tab> :obcommand<Space>workspace:previous-tab<CR>


"	==================== WINDOW/PANE MOTION ====================
"	OPEN SWITCHER
nnoremap <Space>ff :obcommand<Space>switcher:open<CR>
 
"	CLOSE CURRENT PANE
nnoremap <Space>qq :obcommand<Space>workspace:close<CR>


"	FOCUS PANES
nnoremap <Space>wn :obcommand<Space>editor:focus-bottom<CR>
nnoremap <Space>we :obcommand<Space>editor:focus-top<CR>
nnoremap <Space>wi :obcommand<Space>editor:focus-right<CR>
nnoremap <Space>wh :obcommand<Space>editor:focus-left<CR>


"	==================== SPLITS ====================

"	SPLIT VERTICAL
nnoremap <Space>wsv :obcommand<Space>workspace:split-vertical<CR>

"	SPLIT HORIZONTAL
nnoremap <Space>wsh :obcommand<Space>workspace:split-horizontal<CR>


"	==================== BASIC EDITING ====================

"	BETTER UNDO
nnoremap U <C-r>

"	BETTER ESCAPE
noremap <Space>x <Esc>
inoremap <Space>x <Esc>
