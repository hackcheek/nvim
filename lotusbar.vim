function! RedrawModeColors(mode) " {{{
  " Normal mode
  if a:mode == 'n'
    hi MyStatuslineAccent guifg=#eec201 gui=none guibg=#00000000 ctermfg=196 ctermbg=none
    hi MyStatuslineSeparator guifg=#eec201 gui=none guibg=#00000000 ctermfg=196 ctermbg=none
    hi MyStatuslineFilename guifg=#080808 gui=none guibg=#eec201 ctermfg=000 ctermbg=196
    hi MyStatuslineAccentBody guibg=#eec201 gui=none guifg=#080808 ctermfg=000 ctermbg=196
  " Insert mode

  elseif a:mode == 'i'
    hi MyStatuslineAccent guifg=#eec201 gui=none guibg=#00000000
    hi MyStatuslineFilename guifg=#080808 gui=none guibg=#eec201
    hi MyStatuslineAccentBody guibg=#eec201 gui=none guifg=#EEEEEE ctermfg=110 ctermbg=196

  elseif a:mode == 'R'
    hi MyStatuslineAccent guifg=#eec201 gui=none guibg=none
    hi MyStatuslineSeparator guifg=#eec201 gui=none guibg=none
    hi MyStatuslineFilename guifg=#080808 gui=none guibg=#eec201
    hi MyStatuslineAccentBody guibg=#eec201 gui=none guifg=#080808
  " Visual mode
  elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
    hi MyStatuslineAccent guifg=#eec201 gui=none guibg=none
    hi MyStatuslineSeparator guifg=#eec201 gui=none guibg=none
    hi MyStatuslineFilename guifg=#080808 gui=none guibg=#eec201
    hi MyStatuslineAccentBody guibg=#080808 gui=none guifg=#eec201
  endif

hi MyStatuslineFiletypeBody guifg=#eec201 gui=bold guibg=#000000 ctermfg=000 ctermbg=15
hi MyStatuslineFiletype  guibg=NONE    gui=NONE guifg=#000000 ctermfg=15 ctermbg=none

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
set statusline+=%#MyStatuslineSeparator#
" Git Status
set statusline+=%=
" Line and Column
"set statusline+=%#MyStatuslineLineCol#
"set statusline+=%#MyStatuslineLineColBody#惡\ %2l
"set statusline+=\/%#MyStatuslineLineColBody#%2c
"set statusline+=%#MyStatuslineLineCol#
" Padding
"set statusline+=\
 "Current scroll percentage and total lines of the file
"set statusline+=%#MyStatuslinePercentage#
"set statusline+=%#MyStatuslinePercentageBody#☰\ %P
"set statusline+=\/\%#MyStatuslinePercentageBody#%L
"set statusline+=%#MyStatuslinePercentage#
"set statusline+=\
 "Filetype
set statusline+=%#MyStatuslineFiletype#
set statusline+=%#MyStatuslineFiletypeBody#%{SetFiletype(&filetype)}
set statusline+=%#MyStatuslineFiletype#


" Setup the colors
"hi StatusLine            guifg=#080808    guibg=#eec201  gui=NONE
"hi StatusLineNC          guifg=#080808    guibg=#eec201  gui=bold

hi MyStatuslineModified  guifg=#080808 gui=none guibg=none

"hi MyStatuslinePercentage guifg=#eec201 gui=NONE guibg=NONE
"hi MyStatuslinePercentageBody guibg=#080808 gui=none guifg=#eec201

hi MyStatuslineLineCol guifg=#eec201 gui=NONE guibg=NONE ctermfg=15 ctermbg=none
hi MyStatuslineLineColBody guibg=#eec201 gui=none guifg=#080808 ctermfg=000 ctermbg=15

