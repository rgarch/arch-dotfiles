set nocompatible
filetype off

version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
map Q gq
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-Insert> <MiddleMouse>
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backup
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Source\ Code\ Pro\ Medium\ 11
set helplang=en
set history=50
set hlsearch
set incsearch
set mouse=a
set ruler
set showcmd
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set nu
set ts=4
" vim: set ft=vim :
colors neon
syntax on
set nowrap
set autoread
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set mousehide
set enc=utf-8
