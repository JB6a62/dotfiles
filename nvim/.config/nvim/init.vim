" Behaviour "
set wildmenu
set mouse=a
set nrformats+=alpha
set tabstop=2
set shiftwidth=0
filetype plugin indent on
autocmd BufWritePre * :%s/\s\+$//e

" Interface "
set number
set showmatch
set hlsearch
set incsearch
set showcmd
set ruler
syntax on
set foldmethod=syntax
colorscheme molokai

" Colorscheme "
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

" Keybinds "
map <F12> :set hls!<CR>
nmap <Space> <Esc>
imap <M-Space> <Esc>

" Plugins "
call plug#begin()
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ncm2/ncm2-jedi'
call plug#end()
