let mapleader = ','
" Disable / Unmap arrow keys in normal mode !
no <Up> ddkP
no <Down> ddp
no <Right> <Nop>
no <Left> <Nop>
" save file automatically
no <Esc><Esc> :w<CR>

" insert new line after in normal mode
no oo o<Esc>
" insert new line before in normal mode
no OO O<Esc>

" Disable / Unmap arrow keys in insert mode !
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

" save file automatically
ino <Esc><Esc> <Esc>:w<CR>

" Disable / Unmap arrow keys in visual mode !
vno <Up> <Nop>
vno <Down> <Nop>
vno <Left> <Nop>
vno <Right> <Nop>

" Custom mapping
" toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" indent file
no <C-l> gg=G
" save file and then class PhpCsFixerFix for File
nnoremap <silent><leader>pcf :w \| :call PhpCsFixerFixFile()<CR>