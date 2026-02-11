" navigation.vim — Window/tab navigation keybindings

" Tab operations
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" Window navigation: Ctrl+arrows and Ctrl+hjkl
noremap <C-Up> <C-W>k
noremap <C-Down> <C-W>j
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l

noremap <C-k> <C-W>k
noremap <C-j> <C-W>j
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Arrow keys for window navigation
noremap <Up>            <C-W>k
noremap <Down>          <C-W>j
noremap <Left>          <C-W>h
noremap <Right>         <C-W>l
noremap <Home>          <C-W>=

" Window repositioning
noremap <C-Left>        <C-W>R
noremap <C-Right>       <C-W>r
noremap <C-S-Up>        <C-W>K
noremap <C-S-Down>      <C-W>J
noremap <C-S-Left>      <C-W>H
noremap <C-S-Right>     <C-W>L

" Window resizing
noremap <A-Up>          <C-W>+
noremap <A-Down>        <C-W>-
noremap <A-Left>        <C-W><
noremap <A-Right>       <C-W>>

" Toggle line numbers
nmap <F3> :set nu! <CR>
nmap <F4> :set rnu! <CR>

" Terminal
nmap <F9> :wa<CR>:bo term <CR>

" Quickfix window
nmap <F10> :bo cw<CR>

" Exit insert mode and remap for all function keys
imap <F1>   <ESC><F1>
imap <F2>   <ESC><F2>
imap <F3>   <ESC><F3>
imap <F4>   <ESC><F4>
imap <F5>   <ESC><F5>
imap <F6>   <ESC><F6>
imap <F7>   <ESC><F7>
imap <F8>   <ESC><F8>
imap <F9>   <ESC><F9>
imap <F10>  <ESC><F10>
imap <F11>  <ESC><F11>
imap <F12>  <ESC><F12>
