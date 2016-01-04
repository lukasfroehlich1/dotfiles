execute pathogen#infect()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"map <C-B> :!javac %<CR>
"map <C-V> :!java %:r<CR>
set number

:autocmd FileType python nnoremap <buffer> <C-B> :exec '!python' shellescape(@%, 1)<cr>
:autocmd FileType c map <C-B> :w <CR> :!gcc % -o %< && ./%< <CR>

syntax enable
colorscheme monokai

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"to make airline show up
set laststatus=2
