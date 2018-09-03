set number
set tabstop=4
set shiftwidth=2
set expandtab
set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

let mapleader = ","
map <leader>t :NERDTreeToggle<CR>
set undofile
set undodir=~/.vim/undodir
set autoindent
filetype plugin indent on

au BufWritePre * :call <SID>StripWhite()
fun! <SID>StripWhite()
  %s/[ \t]\+$//ge
  %s!^\( \+\)\t!\=StrRepeat("\t", 1 + strlen(submatch(1)) / 8)!ge
endfun

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
