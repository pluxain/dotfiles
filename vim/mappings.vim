" Disable / Unmap arrow keys in normal mode !
no <Up> ddkP
no <Down> ddp
no <Right> <Nop>
no <Left> <Nop>

" Disable / Unmap arrow keys in insert mode !
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

" Disable / Unmap arrow keys in visual mode !
vno <Up> <Nop>
vno <Down> <Nop>
vno <Left> <Nop>
vno <Right> <Nop>

" Custom mapping
map <C-n> :NERDTreeToggle<CR>

" indent file
no <C-l> gg=G
" Insert a blank line above the current line in normal mode
" no <C-Up> O<Esc>
" Insert a blank line below the current line in normal mode
" no <C-Down> o<Esc>