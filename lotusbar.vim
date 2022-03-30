function! RedrawModeColors(mode) " {{{
  " Normal mode
  if a:mode == 'n'
    hi MyStatuslineAccent guifg=#e83f80 gui=none guibg=#00000000 ctermfg=196 ctermbg=none
    hi MyStatuslineFilename guifg=#f9cd7f gui=none guibg=#e83f80 ctermfg=000 ctermbg=196
    hi MyStatuslineAccentBody guibg=#e83f80 gui=none guifg=#00000000 ctermfg=000 ctermbg=196
  " Insert mode

  elseif a:mode == 'i'
    hi MyStatuslineAccent guifg=#e83f80 gui=none guibg=#00000000
    hi MyStatuslineFilename guifg=#f9cd7f gui=none guibg=#e83f80
    hi MyStatuslineAccentBody guibg=#e83f80 gui=none guifg=#b3dfef ctermfg=110 ctermbg=196

  elseif a:mode == 'R'
    hi MyStatuslineAccent guifg=#e83f80 gui=none guibg=none
    hi MyStatuslineFilename guifg=#f9cd7f gui=none guibg=#e83f80
    hi MyStatuslineAccentBody guibg=#e83f80 gui=none guifg=#f9cd7f
  " Visual mode
  elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
    hi MyStatuslineAccent guifg=#e83f80 gui=none guibg=none
    hi MyStatuslineFilename guifg=#f9cd7f gui=none guibg=#e83f80
    hi MyStatuslineAccentBody guibg=#f9cd7f gui=none guifg=#e83f80
  endif

  return ''
endfunction
" }}}

function! SetFiletype(filetype) " {{{
  if a:filetype == ''
      return '-'
  else
      return a:filetype
  endif
endfunction
" }}}

set statusline=%{RedrawModeColors(mode())}
" Left side items
" =======================
set statusline+=%#MyStatuslineAccent#
set statusline+=%#MyStatuslineAccentBody#
" Filename
set statusline+=%#MyStatuslineFilename#\ %.20f
set statusline+=%#MyStatuslineSeparator#\
" Git Status
set statusline+=%=
" Line and Column
set statusline+=%#MyStatuslineLineCol#
set statusline+=%#MyStatuslineLineColBody#惡\ %2l
set statusline+=\/%#MyStatuslineLineColBody#%2c
set statusline+=%#MyStatuslineLineCol#
" Padding
set statusline+=\
" Current scroll percentage and total lines of the file
"set statusline+=%#MyStatuslinePercentage#
"set statusline+=%#MyStatuslinePercentageBody#☰\ %P
"set statusline+=\/\%#MyStatuslinePercentageBody#%L
"set statusline+=%#MyStatuslinePercentage#
"set statusline+=\
" Filetype
set statusline+=%#MyStatuslineFiletype#
set statusline+=%#MyStatuslineFiletypeBody#%{SetFiletype(&filetype)}
set statusline+=%#MyStatuslineFiletype#


" Setup the colors
hi StatusLine          guifg=#f9cd7f       guibg=#e83f80  gui=NONE
hi StatusLineNC        guifg=#f9cd7f    guibg=#e83f80     gui=bold

hi MyStatuslineSeparator guifg=#e83f80 gui=none guibg=#f9cd7f ctermfg=15 ctermbg=none

hi MyStatuslineModified  guifg=#f9cd7f gui=none guibg=none
hi MyStatuslineFiletype guibg=NONE gui=NONE guifg=#e83f80 ctermfg=15 ctermbg=none
hi MyStatuslineFiletypeBody guifg=#f9cd7f gui=bold guibg=#e83f80 ctermfg=000 ctermbg=15

hi MyStatuslinePercentage guifg=#585e74 gui=NONE guibg=NONE
hi MyStatuslinePercentageBody guibg=#f9cd7f gui=none guifg=#e83f80

hi MyStatuslineLineCol guifg=#e83f80 gui=NONE guibg=NONE ctermfg=15 ctermbg=none
hi MyStatuslineLineColBody guibg=#e83f80 gui=none guifg=#f9cd7f ctermfg=000 ctermbg=15

