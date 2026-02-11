" appearance.vim — Colors, statusline, visual settings

syntax on

" Use new regular expression engine
set re=0
set t_Co=256
set cursorline
set background=dark

colorscheme nord

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

" Built-in statusline (replaces lightline)
set laststatus=2
set statusline=%f\ %m%r%h%w\ %=%y\ [%{&fenc}]\ %l:%c\ %p%%
