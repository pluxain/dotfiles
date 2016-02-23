let mapleader = ','
" Disable / Unmap arrow keys in normal mode !
no <Up> ddkP
no <Down> ddp
no <Right> <Nop>
no <Left> <Nop>
" save file automatically
no <Esc><Esc> :w<CR>

" insert new line after in normal mode
no <Leader>o o<Esc>
" insert new line before in normal mode
no <Leader>O O<Esc>

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
nmap <C-n> :NERDTreeToggle<CR>

no <C-l> gg=G " indent file

"replace the current word in all opened buffers
nmap <Leader>r :call Replace()<CR>

" splits navigation easier
nmap <Leader>h <C-w><C-h>
nmap <Leader>j <C-w><C-j>
nmap <Leader>k <C-w><C-k>
nmap <Leader>l <C-w><C-l>
nmap <Leader>= <C-w>=
nmap <Leader>\| <C-w>\|
nmap <Leader><Left> <C-w><C-h><C-w>\| " shift to left split and maximise it
nmap <Leader><Right> <C-w><C-l><C-w>\| " shift to right split and maximise it

" buffers navigation
nmap <Leader>n :bn<CR>
nmap <Leader>N :bp<CR>

"-----PROGRAMMING-----
" save file and then class PhpCsFixerFix for File
nnoremap <Silent><Leader>pcf :w \| :call PhpCsFixerFixFile()<CR>
" execute current file in ruby
nmap <Leader>er :! ruby %<Enter>