let s:dir = fnamemodify(resolve(expand('<sfile>')), ':h')
execute 'set runtimepath+=' .. s:dir
execute 'set packpath+=' .. s:dir

" Load bundled Vim 9.1 optional plugins
packadd! matchit
packadd comment
packadd editorconfig
packadd! hlyank
packadd! nohlsearch

" Load yegappan/lsp from pack/plugins/opt/
silent! packadd lsp

" The plugin/ directory is auto-sourced by Vim from runtimepath.
" Modules: appearance, editor, navigation, lsp, languages, functions.
