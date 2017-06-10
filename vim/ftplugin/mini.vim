nnoremap <C-B> :w <CR> :call BuildAST()<CR>

setlocal commentstring=#\ %s

setlocal ts=3 sts=3 sw=3

if exists('*BuildAST')
   finish
endif
function! BuildAST()
   let path = expand('%:r')

   silent exe "!java -cp parser:parser/jars/antlr-4.6-complete.jar:parser/jars/javax.json-1.0.4.jar MiniCompiler % > " . path . ".json"

   if filereadable(path . ".json")
      exe "!python type_check.py " . path . ".json"
   endif

endfunction
