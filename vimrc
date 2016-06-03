 " Custom key binding
 inoremap jj <ESC>
 

"Comment

"set nowrap         "Do not wrap lines
set tabstop=4       "A tab is 4 spaces
set shiftwidth=4	"When identing with '>', use 4 spaces width
set expandtab		"On pressing tab, insert 4 spaces"
set backspace=indent,eol,start "Allow backspacing over everythin in insert mode
set autoindent      "Set auto indent to on
set copyindent      "Copy the previos indentation on autoindent
set number      "Show line numbers
set shiftwidth=4    "Number of spaces to use for autoindeting
set shiftround      "User multiple of shiftwidt when indenting with '<' and '>'
set showmatch       "show matching parenthesis
set ignorecase      "ignore case when searching
set shiftwidth=4    "Number of spaces to use for autoindeting
set shiftround      "User multiple of shiftwidt when indenting with '<' and '>'
set showmatch       "show matching parenthesis
set ignorecase      "ignore case when searching
set smartcase       "ingnore case if search pattern is all lowercase casesensitive otherwise
set smarttab        " Insert tabse on the start of a line according to shiftwidth, not tabstop
set hlsearch        "Highlight search terms
set incsearch       "Show search matches as you type
set laststatus=2
set statusline+=%F%m%r%h%w%<\ %{&ff}\ %Y\ [0x\%02.2B]\ %=%l,%v\ %p%%

"Colorize the Pmenu
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

highlight Pmenu ctermfg=161 ctermbg=157;
highlight PmenuSel ctermfg=144
 

