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
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'shougo/neocomplete.vim'
Plugin 'Shougo/vimproc.vim'

" haskell
" Plugin 'eagletmt/ghcmod-vim'
" Plugin 'Twinside/vim-hoogle'
" Plugin 'itchyny/vim-haskell-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on           " required
