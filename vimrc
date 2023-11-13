syntax on
colorscheme nord
set background=dark
set ai " auto indent
set et " expand tabs
set hid " hidden buffers
set nu " numbers
set si " smart indent
set sts=2 " soft tab stop
set sw=2 " shift width
set ts=2 " tabstop
set mouse=a " enable mouse
set directory=~/.local/share/vim/swap,/tmp
set undodir=~/.local/share/vim/undo,/tmp
set undofile
autocmd BufWritePre * :%s/\s\+$//e " clear trailing spaces

" let g:prettier#autoformat = 1
" let g:prettier#autoformat_require_pragma = 0
