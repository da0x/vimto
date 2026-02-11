" lsp.vim — yegappan/lsp setup + keybindings

function! s:LspSetup()
    let servers = []

    if executable('gopls')
        call add(servers, #{
            \   name: 'gopls',
            \   filetype: ['go', 'gomod'],
            \   path: exepath('gopls'),
            \   args: ['serve'],
            \ })
    endif

    if executable('typescript-language-server')
        call add(servers, #{
            \   name: 'typescript-language-server',
            \   filetype: ['typescript', 'typescriptreact', 'javascript'],
            \   path: exepath('typescript-language-server'),
            \   args: ['--stdio'],
            \ })
    endif

    if executable('clangd')
        call add(servers, #{
            \   name: 'clangd',
            \   filetype: ['c', 'cpp'],
            \   path: exepath('clangd'),
            \   args: ['--background-index'],
            \ })
    endif

    if empty(servers)
        return
    endif

    call LspOptionsSet(#{
        \   autoComplete: v:true,
        \   showSignature: v:true,
        \   showDiagWithSign: v:true,
        \ })
    call LspAddServer(servers)
endfunction

if exists('*LspAddServer')
    autocmd VimEnter * call s:LspSetup()
endif

" LSP keybindings (unified, replacing CoC/tsuquyomi/vim-go)
nnoremap <silent> gd :LspGotoDefinition<CR>
nnoremap <silent> gy :LspGotoTypeDef<CR>
nnoremap <silent> gi :LspGotoImpl<CR>
nnoremap <silent> gr :LspShowReferences<CR>
nnoremap <silent> K  :LspHover<CR>
nnoremap <silent> [g :LspDiagPrev<CR>
nnoremap <silent> ]g :LspDiagNext<CR>
nnoremap <silent> <F2> :LspRename<CR>
