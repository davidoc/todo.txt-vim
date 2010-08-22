" Vim filetype detection file
" Language:	todo.txt (http://todotxt.com/)
" Maintainer:	David O'Callaghan <david.ocallaghan@cs.tcd.ie>
" URL:		
" Version:	1
" Last Change:  2010 Aug 22
"
augroup todotxt
     au! BufRead,BufNewFile todo.txt setfiletype todotxt
     au! BufRead,BufNewFile done.txt setfiletype todotxt
augroup END
