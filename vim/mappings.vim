" Disable / Unmap arrow keys in normal mode !
no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>

" Disable / Unmap arrow keys in insert mode !
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" Disable / Unmap arrow keys in visual mode !
vno <down> <Nop>
vno <up> <Nop>
vno <left> <Nop>
vno <right> <Nop>

" Custom mapping
" Ctrl+j to move down a line
no <C-j> ddp
" Ctrl+k to move up a line
no <C-k> ddkP
" Insert a blank line above the current line in normal mode
no <S-Enter> O<Esc>
" Insert a blank line below the current line in normal mode
no <CR> o<Esc>
" Enter in Insert mode escapes to normal mode
ino <Enter> <Esc>
