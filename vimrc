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

autocmd BufWritePre * :%s/\s\+$//e

" Goyo Settings
let g:goyo_width = 66

function! s:goyo_enter()
  colorscheme typewriter-night
  set noshowcmd
  set scrolloff=999
  set linebreak
  Limelight
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  Limelight!
  set showmode
  set showcmd
  set scrolloff=5
  colorscheme default
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" turn-on distraction free writing mode by default for markdown files
" au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} :Goyo
