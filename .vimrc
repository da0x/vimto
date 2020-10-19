"set runtimepath+=~/.vimto

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
set background=light
colorscheme PaperColor
" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif

" turn on line numbering
set number

" sane text files
" set fileformat=unix
set encoding=utf-8
"sane editing (tabs)
set tabstop=4
" set shiftwidth=4
" set softtabstop=4

" convert all typed tabs to spaces
set expandtab

"autocompletion with ctrl+space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

" Color Scheme
" syntax enable

" Netrw
" let g:netrw_winsize = 80

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
