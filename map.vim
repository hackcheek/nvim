" KEYMAPPINGS
"DISABLED DEFAULT MAPPING: UNSET SHORTCUTS
" Unmapping help from F1 and Ctrl-F1 for use toggling the reference manual
" the :h topic feature works, and <leader><F1> displays quickref
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>
"unmap the suspend function
map <C-z> <Nop>

" Set mapleader
let g:mapleader=","

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" spacebar create/open/close folding
nmap <silent> <Space> za
vmap <silent> <Space> zf

" enable/disable list
nmap <silent> <C-l> :set nolist!<CR>

" Map escape key to jj
"imap jj <ESC>

"" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>x :q<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
"command W w !sudo tee % > /dev/null

" Move visual block
vnoremap <C-j> :m '>+1<cr>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Spell commands
nmap ?n ]s
nmap ?p [s
nmap ?+ zg
nmap ?? z=

" Make Y consistent with C and D
nnoremap Y y$

" jump to start/end of line
noremap H ^
noremap L $

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Keep search pattern at the center of the screen
nmap <silent> n nzz
nmap <silent> N Nzz
nmap <silent> * *zz
nmap <silent> # #zz
nmap <silent> g* g*zz
nmap <silent> g# g#zz

" Circular windows navigation
nmap <C-j> <c-w>w
nmap <C-k> <c-w>W

nnoremap <silent> <C-w>1 :only<CR>
nnoremap <silent> <C-w>2 :only<CR> <C-w>v
nnoremap <silent> <C-w>3 :only<CR> <C-w>v<C-w>s
nnoremap <silent> <C-w>4 :only<CR> <C-w>v<C-w>s<C-w>h<C-w>s

" switch to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" set text wrapping toggles
nmap <silent> tw :set invwrap<cr>:set wrap?<cr>

" Underline the current line with '-'
" Mapping selecting mappings


"FZF

" Git Files
nnoremap <leader>gg :cd $HOME<CR>:GFiles<CR>
" Grep
nnoremap <leader>gr :cd $HOME<CR>:Rg<CR>
" Files
nnoremap <leader>ff :cd $HOME<CR>:Files<CR>
let g:fzf_preview_windows = 'right:60%'

command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {'options': ['--preview', 'preview {}']}, <bang>0)
command! -bang -nargs=? -complete=dir GFiles call fzf#vim#gitfiles(<q-args>, {'options': ['--preview', 'preview {}']}, <bang>0)
command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)


" Bufferline

nnoremap <A-r> :NvimTreeToggle<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" Tabs
nmap <leader>j :tabprevious<CR>
nmap <leader>k :tabnext<CR>

" Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> r  <Plug>(coc-rename)

 "yapf
map <C-Y> :call yapf#YAPF()<CR>
imap <C-Y> <c-o>:call yapf#YAPF()<cr>

" Databases
nmap <leader>db :%DB mysql://root@localhost/<CR>
vmap <leader>db :'<,'>DB mysql://root@localhost/<CR>
nmap <leader>du :DBUI<CR>


" Magma jupyter
nmap <leader>,  :MagmaEvaluateOperator<CR>
nmap <leader>,l :MagmaEvaluateLine<CR>
xmap <leader>,  :<C-u>MagmaEvaluateVisual<CR>
nmap <leader>,c :MagmaReevaluateCell<CR>
nmap <leader>,d :MagmaDelete<CR>
nmap <leader>,o :MagmaShowOutput<CR>

