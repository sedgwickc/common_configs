set nocompatible " be IMproved
let b:did_ftplugin = 1

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline-themes/vim-airline-themes' "Airline themes
Plugin 'vim-gutentags/vim-gutentags' "ctag management
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin  on    " required

"[airline] Always show numbered listed of buffers
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

"[airline] Show bottom line always, hide vim mode
set laststatus=2
set noshowmode

"[airline] Remove pause after leaving insert mode
set timeoutlen=50

"[gutentags] Don't pollute project dirs
let g:gutentags_cache_dir = '~/.vim/tags/'


"Theming
syntax enable
"colorscheme luna-term
let g:airline_theme='luna'
"let g:airline_powerline_fonts=1 "Requires powerline fonts!

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
hi Special	term=bold	ctermfg=cyan	guifg=Blue
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
