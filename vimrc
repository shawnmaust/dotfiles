syntax on
set background=dark
set ai " auto indent
set et " expand tabs
set hls " highlighted search
set hid " hidden buffers
set nu " numbers
set si " smart indent
set sts=2 " soft tab stop
set sw=2 " shift width
set ts=2 " tabstop
" set ic " ignore case
" set is " inc search
" set rnu " relative numbers

set directory=~/.local/share/vim/swap,/tmp
set undodir=~/.local/share/vim/undo,/tmp
set undofile

hi SpellBad ctermfg=white ctermbg=red " Spell check highlighting

autocmd FileType gitcommit,markdown,text setl nosi spell
autocmd FileType markdown,text setl tw=80 wm=2

autocmd BufWritePre * :%s/\s\+$//e

set rtp+=~/.fzf
