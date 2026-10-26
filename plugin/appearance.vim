" appearance.vim — Colors, statusline, visual settings

syntax on

set cursorline

colorscheme nord

set termguicolors

" Built-in statusline (replaces lightline)
set laststatus=2
set statusline=%f\ %m%r%h%w\ %=%y\ [%{&fenc}]\ %l:%c\ %p%%
