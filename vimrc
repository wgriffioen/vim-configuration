" vim: fdm=marker

set nocompatible
filetype off

" Plugins {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'godlygeek/tabular'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

" }}}

" Colors {{{

syntax enable
set background=light
colorscheme solarized
let g:airline_theme='solarized'
let g:solarized_termcolors=256

" }}}

" Whitespace {{{

set tabstop=4       " Number of visual spaces per TAB
set softtabstop=4   " Number of spaces in tab when editting
set expandtab       " Tabs should be treated as spaces

" }}}

" UI Configuration {{{

set number
set showcmd
set cursorline
filetype indent on
set showmatch
set lazyredraw

" }}}

" Searching {{{

set incsearch                       " Search as characters are entered
set hlsearch                        " Highlight search results
" Shortcut to clear highlighting
nnoremap <leader>n :nohlsearch<CR> 

" }}}

" Keymaps {{{

let mapleader=" "

" }}}

" Plugin specific settings {{{1

" CtrlP Settings {{{2

nnoremap <leader>p :CtrlP<CR>
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" }}}

" Fugitive settings {{{2

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>go :Git stash pop<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gt :Git stash<CR>
nnoremap <leader>gu :Git pull<CR>

" }}}

" NerdTree {{{2

map <C-n> :NERDTreeToggle<CR>

" }}}

" }}}
