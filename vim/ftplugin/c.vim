function! BuildCheck()
   w
   if filereadable("Makefile")
       silent make clean
       silent make
   else
       !gcc % -o _%<
   endif 
   if filereadable("Runfile")
       execute "!" . readfile("Runfile")[0]
   else
       !./_%<
   endif
endfunction

map <C-B> :call BuildCheck()<CR>

" sets tab width for c to 3
setlocal tabstop=3
setlocal shiftwidth=3
setlocal expandtab
