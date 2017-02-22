nnoremap <buffer> <C-B> :exec '!python3' shellescape(@%, 1)<cr>
" old profiling code
"autocmd FileType python map <C-,> :w <CR> :!kernprof -lv %<CR>

"set tabs to 4
setlocal ts=4 sts=4 sw=4
