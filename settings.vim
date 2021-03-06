" SETTINGS
" General
set title                          " change the terminal's title
set history=1000                   " keep 100 lines of command line history
set autoread                       " Set to auto read when a file is changed from the outside
set autowrite                      " Auto save before commands like next and make
set backspace=2                    " make backspace work normal
set gdefault                       " regex /g by default
set hid                            " you can change buffers without saving
set nostartofline                  " don't jump to first character when paging
set printoptions=paper:a4,syntax:n " controls the default paper size and the printing of syntax highlighting (:n -> none)
set report=0                       " tell us when anything is changed via :...0
set switchbuf=useopen              " reveal already opened files from the quickfix window instead of opening new buffers
set ttyfast                        " smoother changes
set viminfo='20,\"80               " read/write a .viminfo file, don't store more
set virtualedit=onemore            " Allow for cursor beyond last character
set shortmess+=c                   " Abbrev. of messages (avoids 'hit enter')
set updatetime=300
set viewoptions=cursor,folds,slash,unix
" vertical/horizontal scroll off settings
set scrolloff=7
set sidescrolloff=5

" No bell or flash wanted
set novisualbell " No blinking
set noerrorbells " No noise.
set vb t_vb=     " disable any beeps or flashes on error

" Use the '*' register as well as the the '+' register if it's available too
set clipboard+=unnamedplus

" Configure to primarily use utf8
set encoding=utf-8
setglobal fileencoding=utf-8
set fileformats=unix "set compatible line endings in order of preference

" Enable mouse
set mouse=a
set mousehide
set mousemodel=popup

" Editor Settings
set cmdheight=1          " the command bar is 2 high
set equalalways          " Close a split window in Vim without resizing other windows
set guitablabel=%t
set laststatus=2         " always show statusline
set lazyredraw           " do not redraw while running macros (much faster) (Lazy Redraw)
set linespace=0          " space it out a little more (easier to read)
set number               " turn on line numbers
"set relativenumber
set showmode             " If in Insert, Replace or Visual mode put a message on the last line.
set ttimeout
set ttimeoutlen=100

" wildmode
set complete-=i
set completeopt-=preview
set wildmenu           " nice tab-completion on the command line
set wildchar=9         " tab as completion character
set wildmode=longest:full,list:full
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Suffixes that get lower priority when doing tab completion for filenames
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pdf,.exe

" chars to show for list
set listchars=tab:???\ ,eol:??,trail:???

" Appearance Settings
" switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || GUI()
  syntax enable
endif
" default colorscheme
set termguicolors

" GUI options
set gfn=Fira\ Code:h14

highlight SpellBad term=underline gui=undercurl guisp=Orange

" Bufferline
highlight NvimTreeFolderIcon guibg=blue

" Files, backups and undo
" Turn backup off, since most stuff are in git anyway...
set nobackup
set nowb
set noswapfile
" enable persistent undo
set undodir=$HOME/.vim/.undofile
set undofile
set undolevels=1000  " maximum number of changes that can be undone
set undoreload=10000 " maximum number lines to save for undo on a buffer reload

if ! isdirectory(&undodir)
    call mkdir(&undodir, 'p')
endif

" Wrap
set display=lastline         " don't display @ with long paragraphs
 "set formatoptions=tcroql     " t=text, c=comments, q=format with gq command, o,r=autoinsert comment leader
set formatoptions=roqnl12    " How automatic formatting is to be done
set lbr                      " line break
set nojoinspaces             " Prevents inserting two spaces after punctuation on a join (J)
set nowrap                   " word wrap
set splitbelow               " Puts new split windows to the bottom of the current
set splitright               " Puts new vsplit windows to the right of the current
set textwidth=0
set wrapscan                 " Searches wrap around end of file
let &sbr = nr2char(8618).' ' " Show ??? at the beginning of wrapped lines

" Text, tab and indent related
set autoindent    " Keep the indent when creating a new line
set copyindent    " Copy the previous indentation on autoindent
set smartindent
set expandtab     " Spaces instead of tabs for better cross-editor compatibility
set shiftwidth=4  " Number of spaces to use in each autoindent step
set smarttab      " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set softtabstop=2 " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set tabstop=2     " Two tab spaces

" Search
"set hlsearch        " highlight all matches...
set ignorecase      " select case-insenitiv search
set incsearch       " ...and also during entering the pattern
set magic           " change the way backslashes are used in search patterns
set matchpairs+=<:> " these tokens belong together
set matchtime=2     " How many tenths of a second to blink
set showmatch       " jump to matches during entering the pattern
set smartcase       " No ignorecase if Uppercase chars in search
set nohlsearch      " avoid highlighting when reloading vimrc

" Folding
set foldenable            " enable folding
set foldcolumn=1
set foldlevel=2           " start fold level
set foldmethod=syntax
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
set foldtext=FoldText() " Which command trigger auto-unfold

" Session
set sessionoptions=buffers,curdir,folds,tabpages,winsize
let s:sessiondir  = expand("~/.vim/sessions", 1)
let s:sessionfile = expand(s:sessiondir . "/session.vim", 1)
let s:sessionlock = expand(s:sessiondir . "/session.lock", 1)

