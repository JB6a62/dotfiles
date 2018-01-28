"""""""""""""""""""""""""""""
"        Behaviour          "
"""""""""""""""""""""""""""""
set nocompatible    " Don't behave like Vi

set wildmenu        " Enhanced command line completion
"set wildmode=longest,list   " Complete the longest match, then list others
set backspace=indent,eol,start  " Allow backspacing over more stuff
set confirm         " Ask to confirm instead of failing
set ignorecase      " Case insensitive search
set smartcase       " Case sensitive if search term contains capitals
"set linebreak       " Allow linebreaks between words
"set scrolloff=2     " Start scrolling a few lines from the border
"set visualbell      " Use colour blink instead of sound
"set display+=lastline   " Always display the last line of the screen
"set encoding=utf8   " Use utf8 as internal encoding
"set whichwrap+=<,>,h,l  " Allow cursor to wrap lines
set hidden          " Allow opening new buffers without saving changes
set mouse=a         " Allow mouse control in all modes
"set undofile        " Persistent undo history
"set undodir=~/.vim/undo " Undo data location
"set directory=~/.vim/swap " Swap file location
"set backupdir=~/.vim/backup " Backup file location

"autocmd CompleteDone * pclose " Automatically close preview after completion

imap <M-Space> <Esc>

"""""""""""""""""""""""""""""
"        Formatting         "
"""""""""""""""""""""""""""""
"set tabstop=4       " Width of the tab character
"set softtabstop=4   " How many columns the tab key inserts
"set shiftwidth=4    " Width of 1 indentation level
"set expandtab       " Expand tabs into spaces
"set smartindent     " Smart C-like autoindenting
"
" Determine indentation rules by filetype
"filetype plugin indent on

"""""""""""""""""""""""""""""
"        Interface          "
"""""""""""""""""""""""""""""
set number          " Show line numbers
set showmatch       " When inserting brackets, highlight the matching one
set hlsearch        " Highlight search results
set incsearch       " Highlight search results as the search is typed
set showcmd         " Show command on the bottom
set ruler           " Show line and cursor position
"set colorcolumn=80,120  " Highlight the 80th column
"set listchars=tab:>-,trail:· " Show tabs and trailing space
"set list            " Enable the above settings
set laststatus=2    " Wider status line, needed for powerline

syntax on           " Enable syntax highlighting
colorscheme molokai
set guifont=Fantasque\ Sans\ Mono\ 8

hi NonText ctermbg=none
hi Normal ctermbg=none
hi Comment ctermfg=005
hi Folded ctermfg=008 ctermbg=none
hi LineNr ctermfg=007 ctermbg=none
hi Visual cterm=reverse
hi Search ctermbg=006 ctermfg=none
hi VertSplit ctermbg=none ctermfg=002
hi String ctermfg=006
hi Error ctermbg=none ctermfg=001
hi SignColumn ctermbg=none
hi gitcommitBranch ctermbg=none ctermfg=003

"""""""""""""""""""""""""""""
"        Plugins            "
"""""""""""""""""""""""""""""
"Powerline
let g:airline_powerline_fonts=1
set ttimeoutlen=10
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1

"a.vim
let g:alternateSearchPath='reg:/include/src/g/,reg:/src/include/g/'

"Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Fugitive (Git Plugin)
Plugin 'tpope/vim-fugitive'

" NERDcommenter
Plugin 'scrooloose/nerdcommenter'

" Tag Bar
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set foldmethod=syntax


" Ale linter settings
let g:ale_cpp_clang_options = '-std=c++14 -Wall -I/usr/include/SDL2 -Isrc'

let g:ale_linters = {
\   'cpp': ['clang'],
\}
