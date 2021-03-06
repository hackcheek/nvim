" YinYang - black/white color scheme

if (&background ==# "light" && get(g:, "colors_name", "") ==# "yin")
    runtime! colors/yang.vim
    finish
endif

highlight clear

if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "yin"


let s:palette = {}

let s:palette.visual     = [222, '#151515']
let s:palette.pandark    = [222, '#111111']
let s:palette.panblack   = [222, '#292929']
let s:palette.pangray    = [223, '#969a9d']
let s:palette.pangray2   = [224, '#606569']
let s:palette.panyellow  = [225, '#eec201']
let s:palette.panyellow2 = [226, '#fae12c']
let s:palette.blackest   =  [233, '#000000']
let s:palette.black  =  [234, 'transparent']
let s:palette.gray01 = [235, '#262626']
let s:palette.gray02 = [238, '#444444']
let s:palette.gray03 = [239, '#4e4e4e']
let s:palette.gray04 = [240, '#585858']
let s:palette.gray05 = [242, '#666666']
let s:palette.gray06 = [243, '#767676']
let s:palette.gray07 = [244, '#808080']
let s:palette.gray08 = [245, '#8a8a8a']
let s:palette.gray09 = [246, '#949494']
let s:palette.gray10 = [247, '#9e9e9e']
let s:palette.gray11 = [248, '#a8a8a8']
let s:palette.gray12 = [249, '#b2b2b2']
let s:palette.gray13 = [250, '#bcbcbc']
let s:palette.gray14 = [251, '#c6c6c6']
let s:palette.gray15 = [254, '#e4e4e4']
let s:palette.white  = [255, '#eeeeee']

let s:palette.comments = copy(s:palette.gray03)

let s:palette.purple    = [62, '#5f5fd7']
let s:palette.brown     = [94, '#eec201']
let s:palette.yellow    = [93, '#fae12c']
let s:palette.blue      = [24, '#0091c9']
let s:palette.lightblue = [31, '#70cee2']
let s:palette.green     = [29, '#5eddc1']
let s:palette.red       = [88, '#cc1100']
let s:palette.magenta   = [89, '#d30547']

"#292929
"#606569
"#eec201
"#fae12c
"#969a9d

if has("nvim")
    let g:terminal_color_0 = s:palette.gray01[1]
    let g:terminal_color_1 = s:palette.gray06[1]
    let g:terminal_color_2 = s:palette.gray03[1]
    let g:terminal_color_3 = s:palette.gray11[1]
    let g:terminal_color_4 = s:palette.gray02[1]
    let g:terminal_color_5 = s:palette.gray08[1]
    let g:terminal_color_6 = s:palette.gray09[1]
    let g:terminal_color_7 = s:palette.gray13[1]
    let g:terminal_color_8 = s:palette.gray03[1]
    let g:terminal_color_9 = s:palette.gray10[1]
    let g:terminal_color_10 = s:palette.gray07[1]
    let g:terminal_color_11 = s:palette.gray15[1]
    let g:terminal_color_12 = s:palette.gray05[1]
    let g:terminal_color_13 = s:palette.gray12[1]
    let g:terminal_color_14 = s:palette.gray14[1]
    let g:terminal_color_15 = s:palette.white[1]
elseif has("terminal")
    let g:terminal_ansi_colors = [
                \ s:palette.gray01[1],
                \ s:palette.gray06[1],
                \ s:palette.gray03[1],
                \ s:palette.gray11[1],
                \ s:palette.gray02[1],
                \ s:palette.gray08[1],
                \ s:palette.gray09[1],
                \ s:palette.gray13[1],
                \ s:palette.gray03[1],
                \ s:palette.gray10[1],
                \ s:palette.gray07[1],
                \ s:palette.gray15[1],
                \ s:palette.gray05[1],
                \ s:palette.gray12[1],
                \ s:palette.gray14[1],
                \ s:palette.white[1]
                \ ]
endif

function! s:hi(group, fg_color, bg_color, style)
    let highlight_command = ['hi', a:group]
    if !empty(a:fg_color)
        let [ctermfg, guifg] = a:fg_color
        call add(highlight_command, printf('ctermfg=%d guifg=%s', ctermfg, guifg))
    endif
    if !empty(a:bg_color)
        let [ctermbg, guibg] = a:bg_color
        call add(highlight_command, printf('ctermbg=%d guibg=%s', ctermbg, guibg))
    endif
    if !empty(a:style)
        call add(highlight_command, printf('cterm=%s gui=%s', a:style, a:style))
    endif
    execute join(highlight_command, ' ')
endfunction


call s:hi('Normal', s:palette.gray14, s:palette.black, '')
set background=dark

call s:hi('Constant', s:palette.gray05, [], 'bold')
call s:hi('String', s:palette.green, [], 'italic')
call s:hi('Number', s:palette.green, [], 'italic')

call s:hi('Identifier', s:palette.gray08, [], 'none')
call s:hi('Function', s:palette.yellow, [], 'none')

call s:hi('Statement', s:palette.brown, [], 'bold')
call s:hi('Operator', s:palette.brown, [], 'italic')
call s:hi('Keyword', s:palette.gray05, [], '')

call s:hi('PreProc', s:palette.gray07, [], 'none')

call s:hi('Type', s:palette.gray05, [], 'bold')

call s:hi('Special', s:palette.gray05, [], '')
call s:hi('SpecialComment', s:palette.comments, [], 'bold')

call s:hi('Title', s:palette.gray07, [], 'bold')
call s:hi('Todo', s:palette.purple, s:palette.black, '')
if has("nvim") || has("gui_running")
    call s:hi('Comment', s:palette.comments, [], 'italic')
else
    call s:hi('Comment', s:palette.comments, [], '')
endif

call s:hi('LineNr', s:palette.gray01, s:palette.black, 'none')
call s:hi('FoldColumn', s:palette.gray07, s:palette.black, 'none')
call s:hi('CursorLine', [], s:palette.gray01, 'none')
call s:hi('CursorLineNr', s:palette.gray14, s:palette.gray01, 'none')

call s:hi('Visual', s:palette.black, s:palette.visual, '')
call s:hi('Search', s:palette.gray01, s:palette.gray11, 'none')
call s:hi('IncSearch', s:palette.black, s:palette.gray07, 'bold')

call s:hi('SpellBad', s:palette.red, s:palette.black, 'undercurl')
call s:hi('SpellCap', s:palette.red, s:palette.black, 'undercurl')
call s:hi('SpellLocal', s:palette.red, s:palette.black, 'undercurl')
call s:hi('SpellRare', s:palette.brown, s:palette.black, 'undercurl')

call s:hi('Error', s:palette.red, s:palette.black, 'bold')
call s:hi('ErrorMsg', s:palette.red, s:palette.black, '')
call s:hi('WarningMsg', s:palette.brown, s:palette.black, '')
call s:hi('ModeMsg', s:palette.gray10, [], '')
call s:hi('MoreMsg', s:palette.gray10, [], '')

call s:hi('MatchParen', s:palette.magenta, s:palette.black, '')

call s:hi('Cursor', [], s:palette.gray12, '')
call s:hi('Underlined', s:palette.gray08, [], 'underline')
call s:hi('SpecialKey', s:palette.gray04, [], '')
call s:hi('NonText', s:palette.gray04, [], '')
call s:hi('Directory', s:palette.gray08, [], '')

call s:hi('Pmenu', s:palette.pangray, s:palette.pandark, 'none')
call s:hi('PmenuSbar', s:palette.black, s:palette.gray15, 'none')
call s:hi('PmenuSel', s:palette.panblack, s:palette.pangray, '')
call s:hi('PmenuThumb', s:palette.panblack, s:palette.gray09, 'none')

call s:hi('StatusLine', s:palette.gray11, s:palette.gray03, 'none')
call s:hi('StatusLineNC', s:palette.gray04, s:palette.gray01, 'none')
call s:hi('WildMenu', s:palette.gray08, [], '')
call s:hi('VertSplit', s:palette.gray03, s:palette.gray03, 'none')

call s:hi('DiffAdd', s:palette.blackest, s:palette.green, '')
call s:hi('DiffChange', s:palette.blackest, s:palette.blue, '')
call s:hi('DiffDelete', s:palette.blackest, s:palette.red, '')
call s:hi('DiffText', s:palette.black, s:palette.lightblue, '')
call s:hi('DiffAdded', s:palette.green, s:palette.black, '')
call s:hi('DiffChanged', s:palette.blue, s:palette.black, '')
call s:hi('DiffRemoved', s:palette.red, s:palette.black, '')

highlight! link Character Constant
highlight! link Float Number
highlight! link Boolean Number

highlight! link SignColumn FoldColumn
highlight! link ColorColumn FoldColumn
highlight! link CursorColumn CursorLine

highlight! link Folded LineNr
highlight! link Conceal Normal
highlight! link ErrorMsg Error

highlight! link Conditional Statement
highlight! link Repeat Statement
highlight! link Label Statement
highlight! link Exception Statement

highlight! link Include PreProc
highlight! link Define PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc

highlight! link StorageClass Type
highlight! link Structure Type
highlight! link Typedef Type

highlight! link SpecialChar Special
highlight! link Tag Special
highlight! link Delimiter Special
highlight! link Debug Special
highlight! link Question Special
highlight! link FloatBorder Special

highlight! link VisualNOS Visual
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLineNC
highlight! link TabLineSel StatusLine


"#292929
"#606569
"#eec201
"#fae12c
"#969a9d

" Semshi

function MyCustomHighlights()

    hi semshiLocal           ctermfg=209 guifg=#ff875f
    hi semshiGlobal          ctermfg=214 guifg=#c6c6c6 cterm=bold gui=bold
    hi semshiImported        ctermfg=214 guifg=#eeeeee cterm=none gui=none
    hi semshiParameter       ctermfg=75  guifg=#b2b2b2
    hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
    hi semshiFree            ctermfg=218 guifg=#fae12c cterm=italic gui=italic
    hi semshiBuiltin         ctermfg=207 guifg=#fae12c cterm=italic gui=italic
    hi semshiAttribute       ctermfg=49  guifg=#5eddc1
    hi semshiSelf            ctermfg=249 guifg=#b2b2b2
    hi semshiUnresolved      ctermfg=226 guifg=#fae12c cterm=underline gui=underline
    hi semshiSelected        ctermfg=231 guifg=#eeeeee cterm=bold gui=bold ctermbg=161 guibg=#080808

    hi semshiErrorSign       ctermfg=231 guifg=#cc1100 ctermbg=160 guibg=#00000000
    hi semshiErrorChar       ctermfg=231 guifg=#cc1100 ctermbg=160 guibg=#00000000
    sign define semshiError text=E> texthl=semshiErrorSign

endfunction
autocmd FileType python call MyCustomHighlights()
autocmd ColorScheme * call MyCustomHighlights()
let g:semshi#filetypes = ['python']
let g:semshi#error_sign = 'false'
