"Set leader key to space
let mapleader = " "

"spell check
set sps=best,9
nnoremap <leader>sp :set spell! <CR>
set spelllang=en_us

"map jk to escape. for safety
imap jk <Esc>
imap kj <Esc>
imap :w <Esc>

"make Y more consistant
nnoremap Y y$

"Fix to splits to make them seem normal
set splitbelow
set splitright

"Redraw page
nnoremap <leader>r :redraw!<CR>

"Easier split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"set numbering to be relative
set relativenumber

" Enable copying selections to osx clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

" fixing pasting
map <Leader>p :set paste<CR>o<esc>"*p:set nopaste<cr>

"color scheme
syntax enable
colorscheme monokai

set hidden
set history=100

"general width
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"backspace fix
set backspace=indent,eol,start

"without this we can't see insert
set laststatus=2

"open current filetype file
function OpenFiletype()
    exe 'tabe ~/.vim/ftplugin/' . &filetype . '.vim'
endfunction

nnoremap <Leader>f :call OpenFiletype()<CR>

" detect mini files for CPE 431
au BufNewFile,BufRead *.mini set filetype=mini
