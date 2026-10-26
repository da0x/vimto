" editor.vim — General editor settings

" Line numbering
set number

" Encoding
set encoding=utf-8

" Tabs: 4-space expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Scroll offset
set scrolloff=10

" A ~/.vimrc stops Vim loading defaults.vim, so the parts of it worth having are here.
" Search as you type, and let Esc leave insert mode at once instead of after a second.
set incsearch
set hlsearch
set ttimeout
set ttimeoutlen=100
set display=truncate
set history=200
set nrformats-=octal

" Modern command-line completion popup
set wildoptions=pum

" Smooth scrolling (Vim 9.1)
set smoothscroll

" Autocompletion with ctrl+space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>
