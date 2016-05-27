set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()
"end all vundle stuff"
filetype plugin indent on

colorscheme evening

set number
set cursorline

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

syntax enable

