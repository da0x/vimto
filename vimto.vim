set runtimepath+=~/.vimto

call plug#begin()
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'ayu-theme/ayu-vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'itchyny/lightline.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
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

" scroll offset
set scrolloff=10

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


" Arrwos
noremap <Up>            <C-W>k
noremap <Down>          <C-W>j
noremap <Left>          <C-W>h
noremap <Right>         <C-W>l
noremap <Home>          <C-W>=
noremap <C-Left>        <C-W>R
noremap <C-Right>       <C-W>r
noremap <C-S-Up>        <C-W>K
noremap <C-S-Down>      <C-W>J
noremap <C-S-Left>      <C-W>H
noremap <C-S-Right>     <C-W>L
noremap <A-Up>          <C-W>+
noremap <A-Down>        <C-W>-
noremap <A-Left>        <C-W><
noremap <A-Right>       <C-W>>


" Vim Go shortcuts
autocmd FileType go noremap   <F1>   :GoDef<CR>
nmap                          <F3>   :set nu! <CR>
nmap                          <F4>   :set rnu! <CR>
autocmd FileType go noremap   <F5>   :wa<CR>:GoBuild<CR>:botright cwindow<CR>
autocmd FileType go noremap   <F7>   :wa<CR>:GoTest<CR>:botright cwindow<CR>
autocmd FileType go noremap   <F8>   :wa<CR>:GoRun main.go<CR>
autocmd FileType cpp noremap  <F5>  :wa<CR>:make .obj/%.o<CR>:botright cwindow<CR>
autocmd FileType cpp noremap  <F7>  :wa<CR>:make<CR>
autocmd FileType cpp noremap  <F8>  :wa<CR>:make run<CR>
nmap                          <F9>   :wa<CR>:bo term <CR>
nmap                          <F10>  :bo cw<CR>
autocmd FileType go noremap   <F12>  :GoDefPop<CR>
" Exit insert mode and remap
autocmd FileType go imap      <F1>   <ESC><F1>
imap                          <F2>   <ESC><F2>
imap                          <F3>   <ESC><F3>
imap                          <F4>   <ESC><F4>
autocmd FileType go imap      <F5>   <ESC><F5>
autocmd FileType go imap      <F6>   <ESC><F6>
autocmd FileType go imap      <F7>   <ESC><F7>
autocmd FileType go imap      <F8>   <ESC><F8>
autocmd FileType go imap      <F9>   <ESC><F9>
autocmd FileType go imap      <F10>  <ESC><F10>
autocmd FileType go imap      <F11>  <ESC><F11>
autocmd FileType go imap      <F12>  <ESC><F12>

autocmd FileType html noremap <F5> :wa<CR>
autocmd FileType html imap    <F5> <ESC><F5>
autocmd FileType css noremap  <F5> :wa<CR>
autocmd FileType css imap     <F5> <ESC><F5>

" Folding saving and loading
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview



