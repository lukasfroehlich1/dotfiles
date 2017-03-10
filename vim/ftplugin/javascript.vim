nnoremap <C-B> :wa <CR> :!node %<CR>

" set tab length to 2
setlocal ts=2 sts=2 sw=2

" saves and runs the tests (only works in project root)
nnoremap <Leader>rt :wa <CR> :!yarn run test<CR>

"mapping to open test file
nnoremap <Leader>t :call OpenTest()<CR>

" opens corresponding test file
if exists('*OpenTest')
   finish
endif
function! OpenTest()
   let path = expand('%:p')
   let match = matchstrpos(path, '\/src\/')

   let start = match[1]
   let end = match[2]

   let matchjs = matchstrpos(path, '.js$')
   let startjs = matchjs[1]

   if start != -1 && end != -1 && startjs != -1
      exe "vsp" . path[:start] . "tests/" . path[end:startjs] . "test" . path[startjs:]
   else
      echo "Not relevant file"
   endif
endfunction

