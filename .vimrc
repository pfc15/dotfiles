" show numer
set number

set clipboard=unnamedplus

" Enconding
set encoding=utf-8


if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

set cursorline
set tabstop=4

set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Custom maps
let mapleader = ";"

inoremap jj <ESC>
nnoremap zz G
nnoremap <space> :

nnoremap <leader><left> <C-w>h
nnoremap <leader><right> <C-w>j
nnoremap <leader><up> <C-w>k
nnoremap <leader><down> <C-w>l

nnoremap <leader> <C-w>
tnoremap <leader> <C-w>
tnoremap jj <esc> 
nnoremap nt :tabnew 


