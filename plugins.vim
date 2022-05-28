  "PLUGINS CONFIG
" Ale

let g:ale_enabled = 1
let g:ale_fix_on_save = 1
let g:jsx_ext_required = 0
let g:ale_lint_on_enter = 0
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1
let g:ale_fixers = {
      \  'javascript': ['eslint', 'prettier'],
      \  'typescript': ['tslint', 'prettier'],
      \  'css': ['prettier'],
      \  'less': ['prettier'],
      \  'scss': ['prettier'],
      \  'json': ['prettier'],
      \  'graphql': ['prettier'],
      \  'markdown': ['prettier'],
      \  'python': ['prettier'],
      \  'vue': ['prettier'],
      \}
let g:ale_linters = {
      \  'javascript': ['stylelint', 'eslint'],
      \  'python': ['stylelint', 'eslint'],
      \  'typescript': ['tslint'],
      \  'css': ['stylelint', 'eslint'],
      \}
let g:ale_set_signs = 1
let g:ale_sign_error=''
let g:ale_sign_warning =''


" Buffergator

  nmap <silent><leader>b :EasyBufferHorizontal<CR>
  let g:easybuffer_horizontal_height = '15'


" Telescope

"nnoremap <leader>ff :cd $HOME<CR>:Telescope find_files layout_config={width=0.9} hidden=true prompt_prefix=>>> <CR>
"nnoremap <leader>gg :cd $HOME<CR>:Telescope live_grep layout_config={width=0.9} hidden=true prompt_prefix=>>> theme=dropdown<CR>


" Easymotion

let g:EasyMotion_leader_key = 'e'
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment


" Emmet

let g:user_emmet_leader_key = '<C-e>'
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


" NERDCommenter

nmap ; <Plug>NERDCommenterToggle
vmap ; <Plug>NERDCommenterToggle


" NERDTree

map <silent> <C-o> :NERDTreeToggle<CR>

"let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeMapOpenInTab='\t'
let g:NERDTreeBookmarksFile = expand($HOME.'/.vim/.NERDTreeBookmarks')
let g:NERDTreeWinPos = "left"
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeWinSize = 30
let g:NERDTreeChristmasTree = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMouseMode = 2
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeIgnore = [
      \ 'node_modules',
      \ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
      \ '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$' ]




" Signify

let g:signify_sign_overwrite         = 1
let g:signify_sign_add               = '+'
let g:signify_sign_change            = '!'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'


" Startify

let g:startify_change_to_dir          = 0
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_session_autoload       = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence    = 1


" Undotree

nmap <silent>U :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle=1


" vim-over

nnoremap <C-h> :OverCommandLine<CR>%s/<C-r><C-w>/


" Coc

let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]



autocmd FileType scss setl iskeyword+=@-@

" Force indentation styles for this directory
autocmd FileType python set shiftwidth=2
autocmd FileType python set tabstop=2
autocmd FileType python set softtabstop=2

" Enable omni completion.

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType sql,mysql,plsql setlocal omnifunc=vim_dadbod_completion#omni

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"


" Databases

" Helpers
let g:db_ui_auto_execute_table_helpers = 1

let g:db_ui_table_helpers = {
\   'mysql': {
\     'Count': 'select count(*) from "{table}"',
\     'Primary Keys':'SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME = "{table}" AND CONSTRAINT_TYPE = "PRIMARY KEY"',
\     'Foreign Keys':'SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME = "{table}" AND CONSTRAINT_TYPE = "FOREIGN KEY"'
\   }
\ }

let g:dbs = {
\ 'henry': 'mysql://root@localhost/henry',
\ 'tests': 'mysql://root@localhost/tests',
\ }

let g:db_ui_icons = {
    \ 'expanded': '▾',
    \ 'collapsed': '▸',
    \ 'saved_query': '*',
    \ 'new_query': '+',
    \ 'tables': '~',
    \ 'buffers': '»',
    \ 'connection_ok': '✓',
    \ 'connection_error': '✕',
    \ }

 "Shougo/ddc.vim
call ddc#custom#patch_filetype(['sql', 'mysql', 'plsql'], 'sources', 'dadbod-completion')
call ddc#custom#patch_filetype(['sql', 'mysql', 'plsql'], 'sourceOptions', {
\ 'dadbod-completion': {
\   'mark': 'DB',
\   'isVolatile': v:true,
\ },
\ })

" Source is automatically added, you just need to include it in the chain complete list
let g:completion_chain_complete_list = {
    \   'sql': [
    \    {'complete_items': ['vim-dadbod-completion']},
    \   ],
    \ }
" Make sure `substring` is part of this list. Other items are optional for this completion source
let g:completion_matching_strategy_list = ['exact', 'substring']
" Useful if there's a lot of camel case items
let g:completion_matching_ignore_case = 1


" Magma  upyter

let g:magma_automatically_open_output = v:false
