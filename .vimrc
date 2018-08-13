set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" " required! 
Bundle 'gmarik/vundle'
"Nicer view of the fs
Bundle 'scrooloose/nerdtree'
"Universal syntax checker
Bundle 'scrooloose/syntastic'
"snippets
Bundle "vim-scripts/UltiSnips"
" Beautify tables
Bundle "godlygeek/tabular"
"surround utilities
Bundle "tpope/vim-surround"
"shows the open buffers in a minibuffer
Bundle 'fholgado/minibufexpl.vim'
"undo tree
Bundle 'sjl/gundo.vim'
"simple comment and uncomment utility
Bundle 'scrooloose/nerdcommenter'
"tagbar file skeleton 
Bundle 'majutsushi/tagbar'
"fuzzy file finder
Bundle 'kien/ctrlp.vim.git'
"for git"
Bundle 'tpope/vim-fugitive'
filetype plugin indent on     " required!
"let g:tagbar_ctags_bin = 'ctags --options=/home/javi/.vim/bundle/MatlabFilesEdition/.ctags'
filetype on
filetype plugin on
"syntax on
syntax enable 
"sets
set autoindent
set ruler
set number
set undofile
if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
set undodir=~/.vim/undo
set showmatch
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set hlsearch

set foldmethod=syntax
set foldlevel=2
set suffixesadd+=.php
set suffixesadd+=.html
set suffixesadd+=.ctp
set suffixesadd+=.po


let mapleader = ","
noremap \ ,


"gundo
noremap <Leader>u : GundoToggle<CR>
"Tagbar
noremap <Leader>b : TagbarToggle<CR>
"ctrP to ,t
nnoremap <leader>t :CtrlP<cr>
"jump to buff
nnoremap <leader><leader> :<c-u>exe "b ".v:count<cr>

let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

set tabstop=4
autocmd bufread,bufnewfile *.bash_prompt set filetype=sh
autocmd bufread,bufnewfile *.exports set filetype=sh
autocmd bufread,bufnewfile *.aliases set filetype=sh
