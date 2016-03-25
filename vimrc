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
" Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'slim-template/vim-slim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Color schemes
Plugin 'adlawson/vim-sorcerer'
Plugin 'jonathanfilip/vim-lucius'

" set color schemell of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

"---FUNCTIONS--------
" Removes trailing spaces
function! TrimTrailingWhiteSpaces()
    %s/\s\+$//e
endfunction

"---------------------------------------------------------------------------
"" Tip #382: Search for <cword> and replace with input() in all open buffers
"---------------------------------------------------------------------------
function! ReplaceInCurrent()
    let s:word = input("Replace " . expand('<cword>') . " with in current buffer: ")
    :exe '%s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
    :unlet! s:word
endfunction

function! ReplaceInBuffers()
    let s:word = input("Replace " . expand('<cword>') . " with in all opened buffers: ")
    :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
    :unlet! s:word
endfunction





"------ASPECT-----------------
" use xxx.vim color scheme in ~/.vim/colors/
colorscheme lucius
LuciusDarkLowContrast
set cursorline " show the current line
set showcmd " show commands typed if several keys
set ruler " show l/c informations on the right bottom of widow
set laststatus=2 " show status line
set nu " set line numbers




"---------SEARCH-----------
set incsearch " set incremental search => starts searching while typing

" set hlsearch " do highlight words when searching for them. it's distracting.

set showmatch " automatically show matching brackets. works like it does in bbedit.




"-----PLUGINS-----
let NERDTreeShowHidden=1
let g:php_cs_fixer_fixers_list = "-psr0" " set fixers for php-cs-fixer
let g:ctrlp_show_hidden = 1 " show hidden files in ctrlp
" Ignore these directories in ctrlp
set wildignore+=*/out/**
set wildignore+=*/vendor/**
set wildignore+=*/migrations/**
set wildignore+=*/node_modules/**




"------SYNTAX---------
syntax enable " turn syntax hightlighting on by default

set tabstop=4 " real tabs should be 8, and they will show with set list onset tabstop=4
set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set expandtab " no real tabs please!
set smartindent
set autoindent




"-----SPLITS------
set splitbelow " open horizontal split below the current one
set splitright " open vertival split on the right of the current one




"-----MISCS-------
set formatoptions-=cro " disable automatic insertion of comment on new line after a comment line
" make that backspace key work the way it should
set backspace=indent,eol,start

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

set list listchars=tab:▸\ ,trail:•,eol:¬
" set some unprintable characters to visual characters




"-------AUTOCMD--------------
" set local settings for tab and so using autocmd
if has("autocmd")

    " disable automatic comment on new line after a comment line
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " source vimrc file on save
    augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
    augroup END

    " close vim if Nerdtree is the last one opened
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " Enable file type detection
    filetype on

    " Syntax of these languages is fussy over tabs Vs Spaces
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

    " Customisations based on house-style (arbitrary)
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=2 sw=2 expandtab
    autocmd FileType json setlocal ts=4 sts=2 sw=2 expandtab
    autocmd FileType ruby setlocal ts=4 sts=2 sw=2 expandtab
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab

    " Treat .rss files as xml
    autocmd BufNewFile,BufRead *.rss setfiletype xml
    " twig php template engine as jinja
    autocmd BufNewFile,BufRead *.twig set syntax=htmldjango

    " Remove trailing spaces
    autocmd FileWritePre * :call TrimTrailingWhiteSpaces()
    autocmd FileAppendPre * :call TrimTrailingWhiteSpaces()
    autocmd FilterWritePre * :call TrimTrailingWhiteSpaces()
    autocmd BufWritePre * :call TrimTrailingWhiteSpaces()

    " search for a template on file creation matching the extension
    augroup templates
        autocmd!
        " read in templates files
        autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
    augroup END

endif

" Adding mappings
source ~/.vim/mappings.vim
" Adding abbreviations
source ~/.vim/abbreviations.vim