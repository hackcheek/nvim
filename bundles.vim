" Plugs here:


" GENERAL

call plug#begin(expand($HOME.'/.vim/bundle'))

" Syntax

" Highligth
Plug 'itchyny/vim-cursorword'                               " Word Underlined
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Main Highligth
Plug 'romgrk/nvim-treesitter-context'                       " View Function Father
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }    " Python Highligth
Plug 'Glench/Vim-Jinja2-Syntax'                             " Jinja2 Highligth
Plug 'ap/vim-css-color'                                     " Css Highligth
Plug 'sheerun/vim-polyglot'                                 " Good Highligth

" Markdown
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim'

" Errors and formatting
Plug 'dense-analysis/ale' " Error Highligth
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }

" Typing
Plug 'tpope/vim-surround'   " Enclose Vars
Plug 'jiangmiao/auto-pairs' " Automatic Closed
Plug 'ervandew/supertab'


"Autocomplete

Plug 'neoclide/coc.nvim', { 'branch': 'release' } " COC Autocomplete
Plug 'mattn/emmet-vim'                            " Fast Html Code


"Tree

Plug 'scrooloose/nerdtree'          " Tree of Files
Plug 'Xuyuanp/nerdtree-git-plugin'  " Git in Files of Tree


"Fuzzer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }


"IDE

Plug 'Stormherz/tablify'             " Create Tables
Plug 'Konfekt/FastFold'              " Mini Folds in Proyect
Plug 'easymotion/vim-easymotion'     " Move to a Any Word
Plug 'chrisbra/vim-diff-enhanced'    " View Change in the Proyect
Plug 'editorconfig/editorconfig-vim' " Fyletypes Compatibilities
Plug 'itchyny/calendar.vim'          " A Calendar
Plug 'mbbill/undotree'               " View the Last Changes
Plug 'mhinz/vim-startify'            " Default Screen When Start Nvim
Plug 'terryma/vim-multiple-cursors'  " Multiple Cursors
Plug 'troydm/easybuffer.vim'         " Save Cache of Proyects
Plug 'yuttie/comfortable-motion.vim' " Slip Up and Down
Plug 'osyo-manga/vim-over'           " Change All Same Words
Plug 'scrooloose/nerdcommenter'      " Fast Commenter
Plug 'airblade/vim-gitgutter'        " View Git Changes

Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'tpope/vim-repeat' " Contemplate plugins on repeats (.)

" Databases with Dadbod completion

Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'kristijanhusak/vim-dadbod-ui'

Plug 'Shougo/deoplete.nvim'

Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc.vim'


call plug#end()
