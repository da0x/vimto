" functions.vim — SmartQuit, fold persistence, etc.

" Save + Quit (handle netrw and other non-file buffers)
nnoremap <F12> :call SmartQuit()<CR>

function! SmartQuit()
    if &buftype !=# '' || &modifiable == 0
        quit
    else
        write | quit
    endif
endfunction

" Folding saving and loading
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
