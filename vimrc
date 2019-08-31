syntax on
set background=dark
colorscheme typewriter-night
set ai " auto indent
set et " expand tabs
" set hls " highlighted search
set hid " hidden buffers
set nu " numbers
set si " smart indent
set sts=2 " soft tab stop
set sw=2 " shift width
set ts=2 " tabstop
set mouse=a " enable mouse

" set ic " ignore case
" set is " inc search
" set rnu " relative numbers

set directory=~/.local/share/vim/swap,/tmp
set undofile

" hi SpellBad ctermfg=white ctermbg=red " Spell check highlighting
" autocmd FileType gitcommit,markdown,text setl nosi spell

autocmd BufWritePre * :%s/\s\+$//e

" turn-on distraction free writing mode by default for markdown files
" au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()

set rtp+=~/.fzf
let g:goyo_width = 60
