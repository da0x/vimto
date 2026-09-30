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

" Folding saving and loading. Views keep folds and the cursor, not local options:
" a saved option outlives every later change to the filetype's settings.
set viewoptions-=options
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
