" languages.vim — Filetype-specific autocmds

" Load each filetype's ftplugin (comment string, indent width), including those
" from packages such as uione. Indent scripts stay off: indentation is left as is.
filetype plugin on

" Go
autocmd FileType go setlocal makeprg=go\ build\ ./...
autocmd FileType go noremap <buffer> <F1>  :LspGotoDefinition<CR>
autocmd FileType go noremap <buffer> <F5>  :wa<CR>:make<CR>:botright cwindow<CR>
autocmd FileType go noremap <buffer> <F7>  :wa<CR>:terminal go test ./...<CR>
autocmd FileType go noremap <buffer> <F8>  :wa<CR>:terminal go run main.go<CR>
autocmd FileType go noremap <buffer> <F11> :LspGotoDefinition<CR>

" TypeScript
autocmd FileType typescript setlocal makeprg=tsc
autocmd FileType typescript nmap <buffer> <F1>  :LspGotoDefinition<CR>
autocmd FileType typescript nmap <buffer> <F2>  :LspRename<CR>
autocmd FileType typescript nmap <buffer> <F5>  :w<CR>:make --noEmit<CR>:botright cwindow<CR>
autocmd FileType typescript nmap <buffer> <F11> :LspGotoDefinition<CR>

" TypeScript React
autocmd FileType typescriptreact setlocal makeprg=tsc
autocmd FileType typescriptreact nmap <buffer> <F1>  :LspGotoDefinition<CR>
autocmd FileType typescriptreact nmap <buffer> <F2>  :LspRename<CR>
autocmd FileType typescriptreact nmap <buffer> <F5>  :w<CR>:make --noEmit --jsx react<CR>:botright cwindow<CR>

" C++
autocmd FileType cpp noremap <buffer> <F5>  :wa<CR>:make .obj/%.o<CR>:botright cwindow<CR>
autocmd FileType cpp noremap <buffer> <F7>  :wa<CR>:make<CR>
autocmd FileType cpp noremap <buffer> <F8>  :wa<CR>:make run<CR>

" HTML / CSS / Markdown
autocmd FileType html nmap <buffer> <F5> :w<CR>
autocmd FileType css  nmap <buffer> <F5> :w<CR>
autocmd FileType md   nmap <buffer> <F5> :w<CR>
