execute pathogen#infect()

set hlsearch
set mouse=a
set expandtab
set nu
set tabstop=2 shiftwidth=2 softtabstop=2
colorscheme 256-grayvim
syntax on
filetype on
filetype indent on
filetype plugin on

set nocompatible

" Keep default vim file browser when opening a directory
let g:NERDTreeHijackNetrw=0

" I don't know yet
let g:airline#extensions#tabline#enabled = 1

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

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
