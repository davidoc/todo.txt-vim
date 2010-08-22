" Vim syntax file
" Language:	todo.txt (http://todotxt.com/)
" Maintainer:	David O'Callaghan <david.ocallaghan@cs.tcd.ie>
" URL:		
" Version:	1
" Last Change:  2010 Aug 22

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if version < 508
  command! -nargs=+ HiLink hi link <args>
else
  command! -nargs=+ HiLink hi def link <args>
endif

syn case ignore

syn match  todotxtComment "^#.*$" 
syn match  todotxtDone "^x .*$"
syn match  todotxtProject       /+\S\+/ contained
syn match  todotxtContext  "@[A-Za-z0-9_]\+" contained
syn match  todotxtPri "^([A-Z]) " contained

syn region todotxtPriA matchgroup=todotxtPriA start=/^(A) / end=/$/ contains=ALL
syn region todotxtPriB matchgroup=todotxtPriB start=/^(B) / end=/$/ contains=ALL
syn region todotxtPriC matchgroup=todotxtPriC start=/^(C) / end=/$/ contains=ALL
syn region todotxtPriD matchgroup=todotxtPriD start=/^(D) / end=/$/ contains=ALL
hi todotxtPriA ctermfg=DarkYellow guifg=DarkYellow
hi todotxtPriB ctermfg=Green guifg=Green
hi todotxtPriC ctermfg=Blue guifg=Blue
hi todotxtPriD ctermfg=grey guifg=grey
hi todoTxtPri term=bold cterm=bold gui=bold

syn sync fromstart


"highlighting for todotxt groups
"HiLink todotxtListItem       Identifier
HiLink todotxtContext       Identifier
HiLink todotxtProject       Title
HiLink todotxtDone          NonText
HiLink todotxtComment       Comment
"Hi todotxtPri gui=bold          

HiLink todotxtPriA           Constant
HiLink todotxtPriB           Statement
HiLink todotxtPriC           Special
"HiLink todotxtPriD           Statement
"HiLink todotxtPri           Title

let b:current_syntax = "todotxt"

delcommand HiLink
" vim: ts=8
