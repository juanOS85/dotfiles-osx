" Syntax highlighting options
set t_Co=256 " Enable 256 colors
set background=dark
syntax on

set autoindent " Copy indent from last line when starting new line.
set cursorline " Highlight current line.
set expandtab " Expand tabs to spaces.
set history=1000 " Increase history from 20 default to 1000.
set hlsearch " Highlight searches.
set mouse=a " Enable moouse in all in all modes.
set nu " Enable line numbers.
set ruler " Show the cursor position.
set showmode " Show the current mode.
set showtabline=2 " Always show tab bar.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set ttymouse=xterm " Set mouse type to xterm.
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildmenu " Hitting TAB in command mode will show possible completions above command line.

let g:Powerline_symbols = 'fancy'
