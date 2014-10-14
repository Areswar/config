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


" Colorscheme
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
colorscheme jellybeans
" Disable vi compatibility mode
set nocompatible

" Reload a file when it is changed from the outside
set autoread

" Write the file when we leave the buffer
set autowrite

" Force encoding to utf-8, for systems where this is not the default (windows
" comes to mind)
set encoding=utf-8

" Show line number
set number

" Removes spaces at end of lines when writing
autocmd BufWritePre *.c,*.h :%s/\s\+$//ge

" Closes Brackets, braces, strings... automatically
autocmd FileType php,c,java,cpp,js inoremap {<CR>  {<CR>}<Esc>O
autocmd FileType php,c,java,cpp,js inoremap (  ()<Esc>ha
autocmd FileType php,c,java,cpp,js inoremap "  ""<Esc>ha
autocmd FileType php,c,java,cpp,js inoremap '  ''<Esc>ha
autocmd FileType php,c,java,cpp,js inoremap [  []<Esc>ha
autocmd FileType php,c,java,cpp,js inoremap /* /*  */<Esc>hhha
autocmd FileType c,cpp inoremap //* /**<CRCAT_HAT_H

" Displays Line ends and invisible chars
set list
set listchars=tab:>─,eol:¬,trail:\ ,nbsp:¤


" Set the minimal amount of lignes under and above the cursor
" Useful for keeping context when moving with j/k
set scrolloff=5

" Enables syntax highlighting
syntax on

" Default cterm foreground and background color to NONE

" Colors 80th column
set colorcolumn=80

" Allow mouse use in vim
set mouse=a

" Highlight current line
hi CursorLine cterm=NONE ctermbg=236
set cursorline

" The length of a tab
" This is for documentation purposes only,
" do not change the default value of 8, ever.
set tabstop=8

" The number of spaces inserted when you press tab
set softtabstop=2

" The number of spaces inserted/removed when using < or >
set shiftwidth=2

" Insert spaces instead of tabs
set expandtab

" When tabbing manually, use shiftwidth instead of tabstop and softtabstop
set smarttab

" Set basic indenting (i.e. copy the indentation of the previous line)
" When filetype detection didn't find a fancy indentation scheme
set autoindent
autocmd Filetype c set cindent



filetype off

" Enable Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle Bundle
Plugin 'gmarik/vundle'

" Neocomplete Bundle
Plugin 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#max_list = 20

" YouCompleteMe Bundle
"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Syntastic plugin
Plugin 'scrooloose/syntastic'
let g:syntastic_c_compiler='clang' " Use clang instead of gcc
let g:syntastic_c_compiler_options = '-Wall -Wextra -pedantic -std=c99'
let g:syntastic_c_check_header=1 " Check headers in c
let g:syntastic_cpp_compiler = 'clang++' " Use clang++ instead of g++
let g:syntastic_cpp_compiler_options = '-Wall -Wextra -pedantic -std=c++11'
let g:syntastic_cpp_check_header=1 " Check headers in c++
let g:syntastic_ocaml_use_ocamlc = 1 " Use ocamlc instead of ocamlopt

" Supertab Bundle
Plugin 'ervandew/supertab'
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabMappingTabLiteral = "<C-v>"
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips/vim-snippets Bundles
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Airline Bundle
Plugin 'bling/vim-airline'
set laststatus=2
let g:Powerline_symbols = "fancy"
let g:airline_powerline_fonts = 1

" Fugitive Bundle - Git management
Bundle 'tpope/vim-fugitive.git'

filetype plugin indent on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
