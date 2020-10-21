set runtimepath+=~/.vimto

call plug#begin()
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'ayu-theme/ayu-vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'itchyny/lightline.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


" Loading color schemes.
syntax on
set t_Co=256
set cursorline
set background=dark
colorscheme nord
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" turn on line numbering
set number

" sane text files
"set fileformat=unix
set encoding=utf-8

" sane editing (tabs)
set tabstop=4
set shiftwidth=4
set softtabstop=4

" convert all typed tabs to spaces
set expandtab

"autocompletion with ctrl+space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

" Tab operations
nnoremap <Tab> gt
nnoremap <S-Tab> gT

noremap <C-Up> <C-W>k
noremap <C-Down> <C-W>j
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l

noremap <C-k> <C-W>k
noremap <C-j> <C-W>j
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" F1 F2 F3 F4
nmap <F3> :set nu! <CR>
imap <F3> <ESC> :set nu! <CR>i
nmap <leader><F3> :set rnu! <CR>
nmap <F9> :bo term <CR>

" Arrwos
noremap <Up>      <C-W>k
noremap <Down>    <C-W>j
noremap <Left>    <C-W>h
noremap <Right>   <C-W>l

noremap <Home>       <C-W>=
noremap <C-Left>     <C-W>R
noremap <C-Right>    <C-W>r

noremap <C-S-Up>        <C-W>K
noremap <C-S-Down>      <C-W>J
noremap <C-S-Left>      <C-W>H
noremap <C-S-Right>     <C-W>L

noremap <A-Up>          <C-W>+
noremap <A-Down>        <C-W>-
noremap <A-Left>        <C-W><
noremap <A-Right>       <C-W>>


" Vim Go shortcuts
autocmd FileType go noremap <F5> :w<CR>:GoBuild<CR>:botright cwindow<CR>
autocmd FileType go noremap <F1> :GoDef<CR>
autocmd FileType go noremap <F12> :GoDefPop<CR>
