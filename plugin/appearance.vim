" appearance.vim — Colors, statusline, visual settings

syntax on

" Use new regular expression engine
set re=0
set cursorline
set background=dark

colorscheme nord

set termguicolors

" Built-in statusline (replaces lightline)
set laststatus=2
set statusline=%f\ %m%r%h%w\ %=%y\ [%{&fenc}]\ %l:%c\ %p%%
