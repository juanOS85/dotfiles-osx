" Make vim more useful
set nocompatible

" Syntax highlighting options
set t_Co=256 " Enable 256 colors
set background=dark
syntax on
colorscheme hybrid_reverse

set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set cursorline " Highlight current line.
set expandtab " Expand tabs to spaces.
set history=1000 " Increase history from 20 default to 1000.
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
set mouse=a " Enable moouse in all in all modes.
set nostartofline " Don't reset cursor to start of line when moving around.
set nu " Enable line numbers.
set ruler " Show the cursor position.
set shiftwidth=2 " The # of spaces for indenting.
set showmode " Show the current mode.
set showtabline=2 " Always show tab bar.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set softtabstop=2 " Tab key results in 2 spaces
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set ttymouse=xterm " Set mouse type to xterm.
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildmenu " Hitting TAB in command mode will show possible completions above command line.

let g:Powerline_symbols = 'fancy'

" bolded code, like functions and language controls
let g:enable_bold_font = 1
