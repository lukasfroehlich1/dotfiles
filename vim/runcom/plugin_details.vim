"nerd tree
map <C-n> :NERDTreeToggle<CR>

"specify eslint
let g:syntastic_javascript_checkers = ['eslint']

"for react
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }

"eslint fix need to use node modules version
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
endif


"python pep8
" let g:syntastic_python_checkers = ['python', 'flake8', 'pyflakes', 'pycodestyle']
let g:syntastic_python_checkers = ['python', 'flake8', 'pyflakes']

"haskell linting
" autocmd BufWritePost *.hs GhcModCheckAndLintAsync


"not sure what this is.
let g:syntastic_auto_jump = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

"tab complete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" limit list to 5
let g:neocomplete#max_list = 5

" autocomplete for things
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
