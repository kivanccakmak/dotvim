set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic.git'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'SirVer/ultisnips'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-grepper'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal "
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set nocompatible

set bg=dark
if &t_Co > 2 || has("gui_running")
    syntax on
endif

set t_Co=256

colorscheme gruvbox



let mapleader=","
map <leader>y "+y
map <leader>p "+p

set history=10000
set wildmenu
set wildmode=longest:full,full
set ignorecase smartcase
set tabstop=4
set shiftwidth=4
set softtabstop=0
set smarttab
set incsearch
set autoindent
set smartindent
set title
set hlsearch
set ls=2
set expandtab
set scrolloff=3
set nowrapscan
set encoding=utf-8
set fileencoding=utf-8

set undofile
set relativenumber
set number
set showmatch
set gdefault
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set hidden

noremap ^ 0
noremap 0 ^

nnoremap <leader>l :CtrlPBufTagAll<cr>
nnoremap <leader>L :CtrlPTag<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

nmap <F8> :TagbarToggle<CR>

nnoremap <leader><space> :noh<cr>
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"for airties code
set noexpandtab 

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk

nmap <Leader>hv <Plug>GitGutterPreviewHunk

let g:UltiSnipsExpandTrigger="<c-a>"
let g:gitgutter_max_signs = 500  " default value

set noswapfile

set tags+=tags

"rgrepper usage
command! -nargs=* -complete=file Rg Grepper -tool rg -query <args>

let g:neocomplete#enable_at_startup = 1

nnoremap <Leader>rgc :Rg -tc <c-r><c-w><cr>
