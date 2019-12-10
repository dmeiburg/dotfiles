"""""""""""""""""""""""""""""""""""
"General
""""""""""""""""""""""""""""""""""""
set shell=/bin/fish
set history=250
set nocompatible
filetype on
call plug#begin('~/.config/.nvim/plugged')
"comment
Plug 'tpope/vim-commentary'
"ag support
Plug 'rking/ag.vim'
"git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"Better dot command
Plug 'tpope/vim-repeat'
"Syntax checking
Plug 'benekastah/neomake'
"Better Completion
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
"better alignment
Plug 'junegunn/vim-easy-align'
"Python idention
Plug 'Vimjas/vim-python-pep8-indent', {'for': 'python'}
"Solarized
Plug 'altercation/vim-colors-solarized'
call plug#end()
filetype plugin indent on
let g:deoplete#enable_at_startup = 1

"autoread if file is changed from outside
set autoread

let mapleader = "\<Space>"

"configure smartsearching
set ignorecase
set smartcase

"don't redraw while executing macros
set lazyredraw

"regular expressions enabled
set magic

set encoding=utf8

"Splits open at bottom or right
set splitbelow splitright

"""""""""""""""""""""""""""""""""""
"shortcuts
"""""""""""""""""""""""""""""""""""

"fast saving and closing
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

"move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"allow ag (lowercase)
cmap ag Ag

"moving code block
vnoremap < <gv
vnoremap > >gv

"use snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"turn off search hightlight
nmap <leader>, :nohlsearch<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"copy paste to system clipboard
vnoremap <C-y> "+y
map <C-p> "+P

"""""""""""""""""""""""""""""""""""
"Interface
"""""""""""""""""""""""""""""""""""
"show cursor position
set ruler

"show line numbers
set number relativenumber

"show cursor line
set cursorline

"no sound on errors
set noerrorbells
set novisualbell
set t_vb =
set tm=500

"display airline
set laststatus=2
let g:airline_powerline_fonts = 1

"display commands on the bottom while typing
set showcmd

"show editing mode in commandline
set showmode

"enable search highlighting
set hlsearch

"solarized
syntax enable
set background=dark
colorscheme solarized
"disable riv folding
let g:riv_disable_folding = 1

"indention based folding
set foldmethod=indent
set foldlevel=99

"""""""""""""""""""""""""""""""""
"Text, tab, ident...
"""""""""""""""""""""""""""""""""

"spaces instead of tabs
set smarttab
set expandtab

"1 tab = 2 spaces
set shiftwidth=2
set softtabstop=2

"ident
set ai
set si

"""""""""""""""""""""""""""""""""
"Autotasks
"""""""""""""""""""""""""""""""""

"Remove trailing whitespaces
autocmd FileType python,ruby,css,php autocmd BufWritePre <buffer> :%s/\s\+$//e
"
"run Neomake on write to syntax check
autocmd! BufWritePost,BufEnter * Neomake
