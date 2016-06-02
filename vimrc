" Custom key binding
inoremap jj <ESC> 

set tabstop=4
set shiftwidth=4
set expandtab
set shiftwidth=4
set shiftround

set number





colorscheme desert
" Set color scheme
if &t_Co >= 256 || has("gui_running")
endif

if &t_Co > 2 || has("gui_running")
	"Switch syntax highlight on when the terminal has colors
    syntax on
endif
