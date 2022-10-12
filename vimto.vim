set runtimepath+=~/.vimto

call plug#begin()
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'ayu-theme/ayu-vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'itchyny/lightline.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'HerringtonDarkholme/yats.vim'
" Typescript
  Plug 'Quramy/tsuquyomi'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Loading color schemes.
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

" Go shortcuts
autocmd FileType go noremap   <F1>   :GoDef<CR>
nmap                          <F3>   :set nu! <CR>
nmap                          <F4>   :set rnu! <CR>
autocmd FileType go noremap   <F5>   :wa<CR>:GoBuild<CR>:botright cwindow<CR>
autocmd FileType go noremap   <F7>   :wa<CR>:GoTest<CR>:botright cwindow<CR>
autocmd FileType go noremap   <F8>   :wa<CR>:GoRun main.go<CR>
autocmd FileType go noremap   <F11>  :GoDefPop<CR>

" C++ shortcuts
autocmd FileType cpp noremap  <F5>   :wa<CR>:make .obj/%.o<CR>:botright cwindow<CR>
autocmd FileType cpp noremap  <F7>   :wa<CR>:make<CR>
autocmd FileType cpp noremap  <F8>   :wa<CR>:make run<CR>
nmap                          <F9>   :wa<CR>:bo term <CR>
nmap                          <F10>  :bo cw<CR>

" Exit insert mode and remap for all function keys.
imap                          <F1>   <ESC><F1>
imap                          <F2>   <ESC><F2>
imap                          <F3>   <ESC><F3>
imap                          <F4>   <ESC><F4>
imap                          <F5>   <ESC><F5>
imap                          <F6>   <ESC><F6>
imap                          <F7>   <ESC><F7>
imap                          <F8>   <ESC><F8>
imap                          <F9>   <ESC><F9>
imap                          <F10>  <ESC><F10>
imap                          <F11>  <ESC><F11>
imap                          <F12>  <ESC><F12>

" HTML
autocmd FileType html nmap    <F5>  :w<CR>
autocmd FileType css nmap     <F5>  :w<CR>
autocmd FileType md nmap      <F5>  :w<CR>

" typescript react
autocmd FileType typescriptreact nmap     <F1>  :call CocAction('doHover')<CR>
autocmd FileType typescriptreact nmap     <F5>  :w<CR>:make<CR>:botright cwindow<CR>
autocmd FileType typescriptreact nmap     <F2>  <Plug>(coc-rename)

" typescript
autocmd FileType typescript nmap          <F1>  :TsuquyomiDefinition<CR>
autocmd FileType typescript nmap          <F2>  :TsuRenameSymbol<CR>
autocmd FileType typescript nmap          <F5>  :w<CR>:make --noEmit<CR>:botright cwindow<CR>
autocmd FileType typescript nmap          <F11> :TsuGoBack<CR>
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

" Save + Quit
noremap                       <F12> :w<CR>:q<CR>

" Folding saving and loading
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview


