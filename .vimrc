let b:did_ftplugin = 1

filetype plugin on

set grepprg=grep\ -nH\ $*

syntax enable

" Color specifications. Change them as you would like.
"
hi Comment	term=none	ctermfg=blue	guifg=Gray
hi Constant	term=underline	ctermfg=red	guifg=Cyan
hi Identifier	term=underline	ctermfg=green	guifg=White
hi Statement	term=bold	ctermfg=yellow	guifg=White
hi PreProc	term=underline	ctermfg=magenta	guifg=Magenta
hi Type		term=underline	ctermfg=green	guifg=White
hi Special	term=bold	ctermfg=brown	guifg=Blue
hi Nontext	term=bold	ctermfg=red	guifg=Red
hi Normal	guifg=Yellow	guibg=#00007F
hi Normal	ctermfg=white

hi Comment      cterm=none	gui=none
hi Constant     cterm=bold	gui=none
hi Identifier   cterm=none	gui=none
hi Statement    cterm=bold	gui=none
hi PreProc      cterm=bold	gui=none
hi Type         cterm=bold	gui=none
hi Special      cterm=bold	gui=none
hi NonText	cterm=bold	gui=none

" Special highlighting for XML
hi xmlTag ctermfg=blue cterm=bold guifg=white
hi xmlTagName ctermfg=blue cterm=bold guifg=white
hi xmlEndTag ctermfg=blue cterm=bold guifg=white

" Options
"set backspace=2		" Allows insert-mode backspace to work as one expects
set fileformat=unix	" No crazy CR/LF
set nobackup		" Don't use a backup file (also see writebackup)
set nojoinspaces	" One space after a "." rather than 2
set ruler		" Show the line position at the bottom of the window
set scrolloff=1		" Minimum lines between cursor and window edge
set autoindent
set shiftwidth=4	" Indent by 4 columns (for C functions, etc).
set expandtab
set tabstop=4
set showcmd		" Show partially typed commands
set showmatch		" Show parentheses matching
set textwidth=80	" Maximum line width
set viminfo='0,\"100,	" Stay at the start of a file when opening it
set writebackup		" Write temporary backup files in case we crash
set nu 			" Show line numbers
"set spell 		" spell checking
set cursorline		" highlight current line the cursor is on
set listchars=eol:$,tab:->,trail:~,extends:>,precedes:<
set t_Co=256    " force use of 256 colors
set term=xterm-256color    " force use of 256 colors
set colorcolumn=80    " display line at 80th character of text


" status line
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
