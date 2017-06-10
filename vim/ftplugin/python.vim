function! BuildCheck()
   silent !clear
   w
   if filereadable("Runfile")
       execute "!" . readfile("Runfile")[0]
   else
       exec '!python3' shellescape(@%, 1)<CR>
       !python3 ./%
   endif
endfunction

nnoremap <C-B> :call BuildCheck()<CR>

" old profiling code
"autocmd FileType python map <C-,> :w <CR> :!kernprof -lv %<CR>

"set tabs to 4
setlocal ts=4 sts=4 sw=4
