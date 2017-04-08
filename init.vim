set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'cloudhead/neovim-fuzzy'
Plugin 'eugen0329/vim-esearch'
Plugin 'Yggdroot/indentLine'

Plugin 'ryanoasis/vim-devicons'
Plugin 'ayu-theme/ayu-vim' " if not already installed

" syntax files
Plugin 'tpope/vim-haml'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" To ignore plugin indent changes, instead use:
"filetype plugin on

autocmd StdinReadPre * let s:std_in=1

au VimEnter *  NERDTree
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
map <C-f> :Grepper
nmap <F8> :TagbarToggle<CR>
nnoremap <C-p> :FuzzyOpen<CR>

"set ignorecase          " Make searching case insensitive
"set smartcase           " ... unless the query has capital letters.
"set gdefault            " Use 'g' flag by default with :s/foo/bar/.
"set magic               " Use 'magic' patterns (extended regular expressions).

if has("mouse")
    set mouse=a
endif

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu 

" IndentLine {{
"let g:indentLine_char = '|'
"let g:indentLine_first_char = '|'
""let g:indentLine_showFirstIndentLevel = 1
"let g:indentLine_setColors = 0
" }}
"
set noswapfile
set expandtab
set tabstop=2
set shiftwidth=2
set number
set backspace=indent,eol,start

:map <M-Esc>[62~ <ScrollWheelUp>
:map! <M-Esc>[62~ <ScrollWheelUp>
:map <M-Esc>[63~ <ScrollWheelDown>
:map! <M-Esc>[63~ <ScrollWheelDown>
:map <M-Esc>[64~ <S-ScrollWheelUp>
:map! <M-Esc>[64~ <S-ScrollWheelUp>
:map <M-Esc>[65~ <S-ScrollWheelDown>
:map! <M-Esc>[65~ <S-ScrollWheelDown>

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
