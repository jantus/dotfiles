""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"     THE EPIC init.vim FILE                                                   "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" SETUP PLUGINS
"
"directory to ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Color scheme
Plug 'iCyMind/NeoSolarized'

" Nice status bar
Plug 'vim-airline/vim-airline'

" Show git changes in file
Plug 'airblade/vim-gitgutter'

" Dark powered neo-completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}   " completion for GO

" Go environment 
Plug 'fatih/vim-go', { 'commit': '6c1cc914c35735768e54fc4ab0be900a9d62797b' } " fix folds

call plug#end()

"
" Deoplete Configuration
"
let g:deoplete#enable_at_startup = 1


"
" NERDTree Configuration
"
let NERDTreeQuitOnOpen=0 "Keep nerd tree open
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTree
autocmd BufEnter * lcd %:p:h    " change dir to current file

"
" Set python proider
"
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

"
" Enable deoplete completion by default
"
let g:deoplete#enable_at_startup = 1

"
" SETUP CTAGS
"
set tags+=tags;/
set tags+=~/Developer/ctags/tags


"
" SETUP CSCOPE
"
cs add $CSCOPE_DB
set nocscopeverbose "Don't show scope db error message

nmap ts :cs find s <C-R>=expand("<cword>")<CR><CR>      "Find this C symbol
nmap tg :cs find g <C-R>=expand("<cword>")<CR><CR>      "Find this definition
nmap td :cs find d <C-R>=expand("<cword>")<CR><CR>      "Find functions called by this function
nmap tc :cs find c <C-R>=expand("<cword>")<CR><CR>      "Find functions calling this function
nmap tt :cs find t <C-R>=expand("<cword>")<CR><CR>      "Find this text string
nmap te :cs find e <C-R>=expand("<cword>")<CR><CR>      "Find this egrep pattern
nmap tf :cs find f <C-R>=expand("<cfile>")<CR><CR>      "Find this file
nmap ti :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>    "Find filse #including this one
nmap ta :cs find a <C-R>=expand("<cword>")<CR><CR>      "Find places where this symbol is assigned a value

"
" CUSTOM KEY BINDINGS 
"
map <C-h> :tabp <CR>
map <C-l> :tabn <CR>
map <C-n> :tabnew <CR>
map <C-c> :tabc <CR>
inoremap jj <ESC>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


"
" SETUP CUSTOM EDITING SETTINGS
"
"
" Tabing
set autoindent      "Set auto indent to on
set backspace=indent,eol,start "Allow backspacing over everythin in insert mode
set copyindent      "Copy the previos indentation on autoindent
set expandtab
set softtabstop=4   "A tab is actually 4 spaces"
set shiftwidth=4    "Number of spaces to use for autoindeting
set shiftround      "User multiple of shiftwidt when indenting with '<' and '>'
set smarttab        " Insert tabse on the start of a line according to shiftwidth, not tabstop
set tabstop=4       "A tab is 4 spaces
"set nowrap         "Do not wrap lines

" Searching
set ignorecase      "ignore case when searching
set smartcase       "ingnore case if search pattern is all lowercase, casesensitive otherwise
set hlsearch        "Highlight search terms
set incsearch       "Show search matches as you type

" Status bar
set laststatus=2
"set statusline+=%F%m%r%h%w%<\ %{&ff}\ %Y\ [0x\%02.2B]\ %=%l,%v\ %p%% " useful Plug 'vim-airline/vim-airline'

" Syntax
syntax enable
set foldmethod=syntax   "Fold on all curly brackets"
set foldmethod=indent   "Fold on all curly brackets"

" Other
set number          "Show line numbers
set showmatch       "show matching parenthesis

" Colorize
colorscheme NeoSolarized
set termguicolors
set background=dark

" Not create extra files 
set nobackup
set noswapfile
set mouse=a

" Nerdtre change dir to current file
autocmd BufEnter * lcd %:p:h

