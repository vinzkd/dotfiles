" do not load defaults if ~/.vimrc is missing
let skip_defaults_vim=1

filetype plugin indent on
syntax on

set nocompatible

set cursorline
set cursorlineopt=number

set bs=2
set ai
set history=50
set ruler
set number

set background=dark 

highlight LineNr term=bold cterm=NONE ctermfg=DarkGray
highlight CursorLineNr term=bold cterm=NONE ctermfg=LightGray
