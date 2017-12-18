" Custom key binding
inoremap jj <ESC>

"Don't show db error message
set nocscopeverbose

"Set plugin directory to ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Dark powered neo-completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()


"set root for c tags
set tags+=tags;/

"Comment

"Set python proider
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Enable completion by default
let g:deoplete#enable_at_startup = 1

" NERDTree
let NERDTreeQuitOnOpen = 1


"set nowrap         "Do not wrap lines
set tabstop=4       "A tab is 4 spaces
set softtabstop=4   "A tab is actually 4 spaces"
set expandtab
set backspace=indent,eol,start "Allow backspacing over everythin in insert mode
set autoindent      "Set auto indent to on
set copyindent      "Copy the previos indentation on autoindent
set number      "Show line numbers
set shiftwidth=4    "Number of spaces to use for autoindeting
set shiftround      "User multiple of shiftwidt when indenting with '<' and '>'
set showmatch       "show matching parenthesis
set ignorecase      "ignore case when searching
set smartcase       "ingnore case if search pattern is all lowercase
            "   casesensitive otherwise
set shiftwidth=4    "Number of spaces to use for autoindeting
set shiftround      "User multiple of shiftwidt when indenting with '<' and '>'
set showmatch       "show matching parenthesis
set ignorecase      "ignore case when searching
set smartcase       "ingnore case if search pattern is all lowercase
            "   casesensitive otherwise
set smarttab        " Insert tabse on the start of a line according to shiftwidth, not tabstop
set hlsearch        "Highlight search terms
set incsearch       "Show search matches as you type
set laststatus=2
set statusline+=%F%m%r%h%w%<\ %{&ff}\ %Y\ [0x\%02.2B]\ %=%l,%v\ %p%%

set foldmethod=syntax "Fold on all curly brackets"
set foldmethod=indent "Fold on all curly brackets"

set nobackup
set noswapfile
colorscheme desert

" Set color scheme
if &t_Co >= 256 || has("gui_running")
endif

if &t_Co > 2 || has("gui_running")
    " Switch syntax highlight on, when the terminal has colors
    syntax on
endif

hi Folded ctermfg=7     "Set folded line to light gray"
