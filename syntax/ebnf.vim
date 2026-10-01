" Highlighting for EBNF grammars.
"
" Mainly the W3C style the XML specification uses, which uione's grammar is
" written in:
"
"     field ::= NAME (choices | type) rule* ("=" expression)? END
"
" The classic ISO style (rule = ... ; with (* comments *)) is read too.

if exists("b:current_syntax")
    finish
endif

syn sync fromstart

" A rule being defined, at the start of its line.
syn match   ebnfRule      "^\s*\zs\h[A-Za-z0-9_-]*\ze\s*\%(::=\|=\)"
syn match   ebnfDefine    "::=\|="
syn match   ebnfEnd       ";"

" What's written as it is.
syn region  ebnfTerminal  start=+"+ end=+"+ oneline
syn region  ebnfTerminal  start=+'+ end=+'+ oneline

" Pieces the lexer hands over, written in capitals: NAME, STRING, NEWLINE.
syn match   ebnfToken     "\<\u[A-Z0-9_]*\>"

" How often, and which.
syn match   ebnfRepeat    "[*+?]"
syn match   ebnfChoice    "|"
syn match   ebnfExcept    "-"
syn match   ebnfGroup     "[()[\]{}]"

" Characters, in the W3C style: [a-zA-Z_], #x20.
syn match   ebnfClass     "\[\^\=\%([^]\\]\|\\.\)*\]"
syn match   ebnfCharacter "#x\x\+"

" Comments come last, so a /* or (* is never read as anything else.
syn keyword ebnfTodo      contained TODO FIXME XXX NOTE
syn region  ebnfComment   start="/\*" end="\*/" contains=ebnfTodo,@Spell
syn region  ebnfComment   start="(\*" end="\*)" contains=ebnfTodo,@Spell

hi def link ebnfRule      Function
hi def link ebnfDefine    Operator
hi def link ebnfEnd       Delimiter
hi def link ebnfTerminal  String
hi def link ebnfToken     Type
hi def link ebnfRepeat    Operator
hi def link ebnfChoice    Operator
hi def link ebnfExcept    Operator
hi def link ebnfGroup     Delimiter
hi def link ebnfClass     Special
hi def link ebnfCharacter Number
hi def link ebnfComment   Comment
hi def link ebnfTodo      Todo

let b:current_syntax = "ebnf"
