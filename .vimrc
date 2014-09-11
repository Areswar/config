" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim73/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

"              __     _____ __  __ ____   ____     ______   __
"              \ \   / /_ _|  \/  |  _ \ / ___|   | __ ) \ / /
"               \ \ / / | || |\/| | |_) | |       |  _ \\ V / 
"                \ V /  | || |  | |  _ <| |___    | |_) || |  
"                 \_/  |___|_|  |_|_| \_\\____|   |____/ |_|  
"                                             
"                  _    ____  _____ ______        ___    ____  
"                 / \  |  _ \| ____/ ___\ \      / / \  |  _ \ 
"                / _ \ | |_) |  _| \___ \\ \ /\ / / _ \ | |_) |
"               / ___ \|  _ <| |___ ___) |\ V  V / ___ \|  _ < 
"              /_/   \_\_| \_\_____|____/  \_/\_/_/   \_\_| \_\
"          

"                               ARESWAR'S VIMRC
"                          Inspired by Chewie's vimrc : 
"              https://github.com/Chewie/configs/blob/master/.vimrc



" Disable vi compatibility mode
set nocompatible

" Enable filetype detection for plugins and indentation options
filetype plugin indent on

" Reload a file when it is changed from the outside
set autoread

" Write the file when we leave the buffer
set autowrite

" Force encoding to utf-8, for systems where this is not the default (windows
" comes to mind)
set encoding=utf-8

" Show line number
set number

" Show a vertical line at the 80th column
set colorcolumn=80

" Use 256 colors
set t_Co=256

" Set the minimal amount of lignes under and above the cursor
" Useful for keeping context when moving with j/k
set scrolloff=5

" Enables syntax highlighting
syntax on

"Use unicode symbols for Powerline plugin
let g:Powerline_symbols='fancy'

"Always show statusbar for Powerline plugin
set laststatus=2

" Allow mouse use in vim
set mouse=a

" Highlight current line
set cursorline

" The length of a tab
" This is for documentation purposes only,
" do not change the default value of 8, ever.
set tabstop=8

" The number of spaces inserted when you press tab
set softtabstop=4

" The number of spaces inserted/removed when using < or >
set shiftwidth=4

" Insert spaces instead of tabs
set expandtab

" When tabbing manually, use shiftwidth instead of tabstop and softtabstop
set smarttab

" Set basic indenting (i.e. copy the indentation of the previous line)
" When filetype detection didn't find a fancy indentation scheme
set autoindent

colors desert

" Vundle (Plugin manager) setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Vundle Bundles
Bundle 'Lokaltog/vim-powerline'

