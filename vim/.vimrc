set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'valloric/youcompleteme'
Plugin 'bitc/vim-hdevtools'
Plugin 'mxw/vim-jsx'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'tpope/vim-obsession'

" Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required


filetype plugin on 


"Set leader key to space
let mapleader = " "

"spell check
set sps=best,9
nnoremap <leader>sp :set spell! <CR>
set spelllang=en_us

"map jk to escape
imap jk <Esc>
imap kj <Esc>
imap :w <Esc>

"nerd tree
map <C-n> :NERDTreeToggle<CR>

"make Y more consistant
nnoremap Y y$

"Fix to splits to make them seem normal
set splitbelow
set splitright

"vim markdown slowdown
let g:instant_markdown_slow = 1

"Easier split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Redraw page
nnoremap <leader>r :redraw!<CR>

set relativenumber

autocmd FileType python nnoremap <buffer> <C-B> :exec '!python3' shellescape(@%, 1)<cr>
autocmd FileType python map <C-M> :w <CR> :!kernprof -lv %<CR>

autocmd FileType matlab nnoremap <buffer> <C-B> :exec '!octave' shellescape(@%, 1)<cr>

autocmd FileType lua nnoremap <buffer> <C-B> :exec '!lua' shellescape(@%, 1)<cr>

function! BuildCheck()
   if filereadable("Makefile")
       w
       silent make clean
       silent make
       if filereadable("Runfile")
           execute "!" . readfile("Runfile")[0]
       else
           echo "No Runfile found"
           !./_%<
       endif

   else
       w
       !gcc % -o _%< && ./_%<
   endif
endfunction

autocmd FileType c map <C-B> :call BuildCheck()<CR>

autocmd FileType sh map <C-B> :w <CR> :!./%<CR>

autocmd FileType javascript map <C-B> :w <CR> :!node %<CR>
autocmd FileType javascript map <C-M> :w <CR> :!mocha<CR>
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['jshint']

" typescript jazz
autocmd FileType typescript map <C-B> :w <CR> :make<CR>
autocmd FileType typescript map <C-M> :w <CR> :!npm test<CR>
nnoremap <C-C> :w <CR> :SyntasticCheck<CR>
let g:syntastic_typescript_checkers = ['tslint']

" haskell fun
autocmd FileType haskell map <C-B> :w <CR> :!stack ghc % && ./%<<CR>
au FileType haskell nnoremap <leader>t :HdevtoolsType<CR>
au FileType haskell nnoremap <silent> <leader>c :HdevtoolsClear<CR>


"for react

let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }


" youcompleteme bindings
nnoremap <leader>gg :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gt :YcmCompleter GetType<CR>
nnoremap <leader>gd :YcmCompleter GetDoc<CR>
nnoremap <leader>gr :YcmCompleter RefactorRename 

"arg wrap bindings
nnoremap <silent> <leader>a :ArgWrap<CR>


" Enable copying selections to osx clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

syntax enable
colorscheme monokai

set hidden
set history=100


" fixing pasting
map <Leader>p :set paste<CR>o<esc>"*p:set nopaste<cr>


filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Setting spacing for types
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2


"airline fix
set laststatus=2


"backspace fix
set backspace=indent,eol,start

"Syntastic settings
"Following three add status line 
"(actually not sure what this does)
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_auto_jump = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nnoremap <leader>e :Errors<CR>
