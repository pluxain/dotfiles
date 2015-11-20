" turn off compatibility with the old vi
set nocompatible
" Vundle set up
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'rking/ag.vim'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'xsbeats/vim-blade'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'

" Color schemes
Plugin 'adlawson/vim-sorcerer'

" set color schemell of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" Ignore these directories in ctrlp
set wildignore+=*/out/**
set wildignore+=*/vendor/**

" Removes trailing spaces
function TrimTrailingWhiteSpaces()
    %s/\s\+$//e
"     ''
:endfunction

" close vim if Nerdtree is the last one opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" use xxx.vim color scheme in ~/.vim/colors/
colorscheme sorcerer


let NERDTreeShowHidden=1
let g:ctrlp_show_hidden = 1

" show the current line
set cursorline

" set incremental search => starts searching while typing
set incsearch

" do highlight words when searching for them. it's distracting.
" set hlsearch

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" show commands typed if several keys
set showcmd

" show l/C informations on the right bottom of widow
set ruler

" turn syntax hightlighting on by default
syntax enable

" make that backspace key work the way it should
set backspace=indent,eol,start

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" set line numbers
set nu

set list listchars=tab:▸\ ,trail:•,eol:¬
" set some unprintable characters to visual characters

set tabstop=4 " real tabs should be 8, and they will show with set list onset tabstop=4
set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set expandtab " no real tabs please!
set smartindent
set autoindent

" set local settings for tab and so using autocmd
if has("autocmd")

    " Enable file type detection
    filetype on

    " Syntax of these languages is fussy over tabs Vs Spaces
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

    " Customisations based on house-style (arbitrary)
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

    " Treat .rss files as xml
    autocmd BufNewFile,BufRead *.rss setfiletype xml

    " Remove trailing spaces
    autocmd FileWritePre * :call TrimTrailingWhiteSpaces()
    autocmd FileAppendPre * :call TrimTrailingWhiteSpaces()
    autocmd FilterWritePre * :call TrimTrailingWhiteSpaces()
    autocmd BufWritePre * :call TrimTrailingWhiteSpaces()

endif

" Adding mappings
source ~/.vim/mappings.vim