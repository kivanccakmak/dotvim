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
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'SirVer/ultisnips'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'


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

" Tmux key mappings
if &term =~ '^screen' && exists('$TMUX')
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
    execute "set <xHome>=\e[1;*H"
    execute "set <xEnd>=\e[1;*F"
    execute "set <Insert>=\e[2;*~"
    execute "set <Delete>=\e[3;*~"
    execute "set <PageUp>=\e[5;*~"
    execute "set <PageDown>=\e[6;*~"
    execute "set <xF1>=\e[1;*P"
    execute "set <xF2>=\e[1;*Q"
    execute "set <xF3>=\e[1;*R"
    execute "set <xF4>=\e[1;*S"
    execute "set <F5>=\e[15;*~"
    execute "set <F6>=\e[17;*~"
    execute "set <F7>=\e[18;*~"
    execute "set <F8>=\e[19;*~"
    execute "set <F9>=\e[20;*~"
    execute "set <F10>=\e[21;*~"
    execute "set <F11>=\e[23;*~"
    execute "set <F12>=\e[24;*~"
endif

noremap ^ 0
noremap 0 ^

nnoremap <leader>l :CtrlPBufTagAll<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

nnoremap <leader><space> :noh<cr>
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:UltiSnipsExpandTrigger="<c-a>"

set noswapfile
