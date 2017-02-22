"nerd tree
map <C-n> :NERDTreeToggle<CR>

"youcompleteme auto close scratch
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '/Users/lfroehlich/.ycm_extra_conf.py'

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

"not sure what this is. probs not needed
let g:syntastic_auto_jump = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
