set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" convenience
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'raimondi/delimitmate'

" syntactic
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'

" file format
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'

" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" remove whitespace on save
autocmd BufWritePre * StripWhitespace

" turn off search highlight
nmap <leader>\ :nohlsearch<CR>

" nerdtree-tab options
nmap <C-\> :NERDTreeTabsToggle<CR>

map <C-n> <plug>NERDCommenterToggle

" NERDTree options
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup=1

" search hidden dot files using ctrlp
let g:ctrlp_show_hidden = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#close_symbol = '×'
"let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#show_tab_type = 0
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#show_tabs = 0

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" enable/disable fugitive/lawrencium integration
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = 'no branch'

" enable/disable showing a summary of changed hunks under source control.
let g:airline#extensions#hunks#enabled = 1
" enable/disable showing only non-zero hunks.
let g:airline#extensions#hunks#non_zero_only = 1

" dracula theme
color dracula
" dracula highligh search color override
autocmd ColorScheme * highlight Search ctermfg=17 ctermbg=228 cterm=NONE guifg=#282a36 guibg=#f1fa8c gui=NONE
" airline theme
let g:airline_theme='dracula'

" editorconfig option
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

syntax enable           " enable syntax processing

" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set autoindent          " auto indent
set cindent

set number              " show line numbers
set ruler               " show line number, column number
set nowrap              " no line wrapping

set expandtab           " tabs are spaces
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4       " number of spaces in tab when editing

set showmatch           " highlight matching [{()}]
set cursorline          " highlight current line
set hlsearch            " highlight matches
set incsearch           " search as characters are entered
set ignorecase          " ignore case when searching

set backspace=2         " make backspace work like most other apps
set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu

" file encoding
set fileencodings=ucs-bom,utf-8,korea
set fileencoding=utf-8

" show tab chracters
set list
set listchars=tab:»·

" speed up vim
set ttyfast
set lazyredraw          " redraw only when we need to.
