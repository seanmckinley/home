execute pathogen#infect()

set hlsearch
set mouse=a
set expandtab
set nu
set tabstop=2 shiftwidth=2 softtabstop=2
" set paste

" File opening tab completion
set wildmode=longest,list,full
set wildmenu

" Colorscheme
colorscheme genericdc

"Syntastic Highlighting
hi SpellBad ctermfg=124 ctermbg=235 cterm=None
hi SpellCap ctermfg=124 ctermbg=235 cterm=None

" Filetype stuff
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

set backspace=2

set omnifunc=syntaxcomplete#Complete

" Keep default vim file browser when opening a directory
let g:NERDTreeHijackNetrw=0

" Stuff for airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Set temporary directories:

" swap files (.swp) in a common location
" // means use the file's full path
set dir=~/.vim/_swap//

" backup files (~) in a common location if possible
set backup
set backupdir=~/.vim/_backup/,~/tmp,.

" turn on undo files, put them in a common location
set undofile
set undodir=~/.vim/_undo/

let g:RspecSplitHorizontal=0

" line indentation characters
let g:indentLine_char = '|'
" let g:indentLine_char = 'U+E0A3'   Uncomment if github issue gets resolved - https://github.com/Yggdroot/indentLine/issues/98

" Custom Commands
:command Ae :Tab /=
:command Ad :Tab /-

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

