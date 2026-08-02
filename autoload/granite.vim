" SPDX-FileCopyrightText: © 2026 Antti Kivi <antti@anttikivi.com>
"
" SPDX-License-Identifier: GPL-3.0-or-later

" This file is generated using generate.lua. Do not edit manually.

function! granite#Load() abort
  if &background ==# 'dark'
    if get(g:, 'granite_transparent', 0)
      highlight Normal NONE | highlight Normal term=NONE cterm=NONE gui=NONE guifg=#eeeff8 guibg=NONE
      highlight SignColumn NONE | highlight SignColumn term=NONE cterm=NONE gui=NONE guifg=#a4a8a8 guibg=NONE
    else
      highlight Normal NONE | highlight Normal term=NONE cterm=NONE gui=NONE guifg=#eeeff8 guibg=#14161b
      highlight SignColumn NONE | highlight SignColumn term=NONE cterm=NONE gui=NONE guifg=#a4a8a8 guibg=#14161b
    endif

    highlight Added NONE | highlight Added term=NONE cterm=NONE gui=NONE guifg=#72b180
    highlight Changed NONE | highlight Changed term=NONE cterm=NONE gui=NONE guifg=#77b1dd
    highlight ColorColumn NONE | highlight ColorColumn term=NONE cterm=NONE gui=NONE guibg=#22252c
    highlight ComplHint NONE | highlight! link ComplHint NonText
    highlight ComplHintMore NONE | highlight! link ComplHintMore MoreMsg
    highlight ComplMatchIns NONE
    highlight Conceal NONE | highlight Conceal term=NONE cterm=NONE gui=NONE guifg=#22252c
    highlight CurSearch NONE | highlight CurSearch term=NONE cterm=NONE gui=NONE guifg=#14161b guibg=#cca56d
    highlight Cursor NONE | highlight Cursor term=NONE cterm=NONE gui=NONE guifg=#14161b guibg=#eeeff8
    highlight CursorColumn NONE | highlight CursorColumn term=NONE cterm=NONE gui=NONE guibg=#22252c
    highlight CursorIM NONE | highlight! link CursorIM Cursor
    highlight CursorLine NONE | highlight CursorLine term=NONE cterm=NONE gui=NONE guibg=#22252c
    highlight CursorLineFold NONE | highlight! link CursorLineFold FoldColumn
    highlight CursorLineNr NONE | highlight CursorLineNr term=bold cterm=bold gui=bold
    highlight CursorLineSign NONE | highlight! link CursorLineSign SignColumn
    highlight DiffAdd NONE | highlight DiffAdd term=NONE cterm=NONE gui=NONE guifg=#c4c8e7 guibg=#72b180
    highlight DiffChange NONE | highlight DiffChange term=NONE cterm=NONE gui=NONE guifg=#c4c8e7 guibg=#77b1dd
    highlight DiffDelete NONE | highlight DiffDelete term=NONE cterm=NONE gui=NONE guifg=#e08c8e
    highlight DiffText NONE | highlight DiffText term=NONE cterm=NONE gui=NONE guifg=#c4c8e7 guibg=#77b1dd
    highlight DiffTextAdd NONE | highlight! link DiffTextAdd DiffText
    highlight Directory NONE | highlight Directory term=NONE cterm=NONE gui=NONE guifg=#eeeff8
    highlight EndOfBuffer NONE | highlight! link EndOfBuffer NonText
    highlight ErrorMsg NONE | highlight ErrorMsg term=NONE cterm=NONE gui=NONE guifg=#e08c8e
    highlight FloatBorder NONE | highlight! link FloatBorder NormalFloat
    highlight FloatFooter NONE | highlight! link FloatFooter FloatTitle
    highlight FloatShadow NONE | highlight FloatShadow term=NONE cterm=NONE gui=NONE guibg=#22252c
    highlight FloatShadowThrough NONE | highlight FloatShadowThrough term=NONE cterm=NONE gui=NONE guibg=#22252c
    highlight FloatTitle NONE | highlight! link FloatTitle Title
    highlight FoldColumn NONE | highlight! link FoldColumn SignColumn
    highlight Folded NONE | highlight Folded term=NONE cterm=NONE gui=NONE guifg=#c4c8e7 guibg=#22252c
    highlight IncSearch NONE | highlight! link IncSearch CurSearch
    highlight LineNr NONE | highlight LineNr term=NONE cterm=NONE gui=NONE guifg=#a4a8a8
    highlight LineNrAbove NONE | highlight! link LineNrAbove LineNr
    highlight LineNrBelow NONE | highlight! link LineNrBelow LineNr
    highlight MatchParen NONE | highlight MatchParen term=bold cterm=bold gui=bold guibg=#22252c
    highlight ModeMsg NONE | highlight ModeMsg term=NONE cterm=NONE gui=NONE guifg=#a4a8a8
    highlight MoreMsg NONE | highlight MoreMsg term=NONE cterm=NONE gui=NONE guifg=#77b1dd
    highlight MsgArea NONE
    highlight MsgSeparator NONE | highlight! link MsgSeparator StatusLine
    highlight NonText NONE | highlight NonText term=NONE cterm=NONE gui=NONE guifg=#2e313a
    highlight NormalFloat NONE | highlight NormalFloat term=NONE cterm=NONE gui=NONE guibg=#22252c
    highlight NormalNC NONE
    highlight OkMsg NONE | highlight OkMsg term=NONE cterm=NONE gui=NONE guifg=#72b180
    highlight Pmenu NONE | highlight Pmenu term=NONE cterm=NONE gui=NONE guibg=#22252c
    highlight PmenuBorder NONE | highlight! link PmenuBorder Pmenu
    highlight PmenuExtra NONE | highlight! link PmenuExtra Pmenu
    highlight PmenuExtraSel NONE | highlight! link PmenuExtraSel PmenuSel
    highlight PmenuKind NONE | highlight! link PmenuKind Pmenu
    highlight PmenuKindSel NONE | highlight! link PmenuKindSel PmenuSel
    highlight PmenuMatch NONE | highlight PmenuMatch term=bold cterm=bold gui=bold
    highlight PmenuMatchSel NONE | highlight PmenuMatchSel term=bold cterm=bold gui=bold
    highlight PmenuSbar NONE | highlight! link PmenuSbar Pmenu
    highlight PmenuSel NONE | highlight PmenuSel term=reverse cterm=reverse gui=reverse
    highlight PmenuShadow NONE | highlight! link PmenuShadow FloatShadow
    highlight PmenuShadowThrough NONE | highlight! link PmenuShadowThrough FloatShadowThrough
    highlight PmenuThumb NONE | highlight PmenuThumb term=NONE cterm=NONE gui=NONE guibg=#a4a8a8
    highlight PreInsert NONE | highlight PreInsert term=NONE cterm=NONE gui=NONE guifg=#a4a8a8
    highlight Question NONE | highlight Question term=NONE cterm=NONE gui=NONE guibg=#77b1dd
    highlight QuickFixLine NONE | highlight QuickFixLine term=NONE cterm=NONE gui=NONE guibg=#77b1dd
    highlight RedrawDebugClear NONE | highlight RedrawDebugClear term=NONE cterm=NONE gui=NONE guibg=#cca56d
    highlight RedrawDebugComposed NONE | highlight RedrawDebugComposed term=NONE cterm=NONE gui=NONE guibg=#72b180
    highlight RedrawDebugNormal NONE | highlight RedrawDebugNormal term=reverse cterm=reverse gui=reverse
    highlight RedrawDebugRecompose NONE | highlight RedrawDebugRecompose term=NONE cterm=NONE gui=NONE guibg=#e08c8e
    highlight Removed NONE | highlight Removed term=NONE cterm=NONE gui=NONE guifg=#e08c8e
    highlight Search NONE | highlight Search term=NONE cterm=NONE gui=NONE guifg=#14161b guibg=#cca56d
    highlight SpecialKey NONE | highlight SpecialKey term=NONE cterm=NONE gui=NONE guifg=#a4a8a8
    highlight SpellBad NONE | highlight SpellBad term=undercurl cterm=undercurl gui=undercurl guisp=#e08c8e
    highlight SpellCap NONE | highlight SpellCap term=undercurl cterm=undercurl gui=undercurl guisp=#cca56d
    highlight SpellLocal NONE | highlight SpellLocal term=undercurl cterm=undercurl gui=undercurl guisp=#72b180
    highlight SpellRare NONE | highlight SpellRare term=undercurl cterm=undercurl gui=undercurl guisp=#77b1dd
    highlight StatusLine NONE | highlight StatusLine term=NONE cterm=NONE gui=NONE guibg=#22252c
    highlight StatusLineNC NONE | highlight StatusLineNC term=italic cterm=italic gui=italic guibg=#14161b
    highlight StatusLineTerm NONE | highlight! link StatusLineTerm StatusLine
    highlight StatusLineTermNC NONE | highlight! link StatusLineTermNC StatusLineNC
    highlight StderrMsg NONE | highlight! link StderrMsg ErrorMsg
    highlight StdoutMsg NONE
    highlight Substitute NONE | highlight! link Substitute Search
    highlight TabLine NONE | highlight! link TabLine StatusLineNC
    highlight TabLineFill NONE | highlight! link TabLineFill TabLine
    highlight TabLineSel NONE | highlight TabLineSel term=bold cterm=bold gui=bold
    highlight TermCursor NONE | highlight TermCursor term=reverse cterm=reverse gui=reverse
    highlight Title NONE | highlight Title term=bold cterm=bold gui=bold guifg=#a4a8a8
    highlight Underlined NONE | highlight Underlined term=underline cterm=underline gui=underline
    highlight VertSplit NONE | highlight! link VertSplit WinSeparator
    highlight Visual NONE | highlight Visual term=NONE cterm=NONE gui=NONE guibg=#616464
    highlight VisualNOS NONE | highlight! link VisualNOS Visual
    highlight WarningMsg NONE | highlight WarningMsg term=NONE cterm=NONE gui=NONE guifg=#cca56d
    highlight Whitespace NONE | highlight! link Whitespace NonText
    highlight WildMenu NONE | highlight! link WildMenu PmenuSel
    highlight WinBar NONE | highlight WinBar term=bold cterm=bold gui=bold
    highlight WinBarNC NONE | highlight WinBarNC term=italic cterm=italic gui=italic
    highlight WinSeparator NONE | highlight! link WinSeparator Normal
    highlight lCursor NONE | highlight lCursor term=NONE cterm=NONE gui=NONE guifg=#14161b guibg=#eeeff8

    highlight Boolean NONE | highlight! link Boolean Constant
    highlight Character NONE | highlight! link Character String
    highlight Comment NONE | highlight Comment term=italic cterm=italic gui=italic guifg=#a4a8a8
    highlight Conditional NONE | highlight! link Conditional Statement
    highlight Constant NONE | highlight Constant term=NONE cterm=NONE gui=NONE guifg=#77b1dd
    highlight Debug NONE | highlight! link Debug Special
    highlight Define NONE | highlight! link Define PreProc
    highlight Delimiter NONE | highlight Delimiter term=NONE cterm=NONE gui=NONE guifg=#a4a8a8
    highlight Error NONE | highlight Error term=NONE cterm=NONE gui=NONE guifg=#a4a8a8 guibg=#e08c8e
    highlight Exception NONE | highlight! link Exception Statement
    highlight Float NONE | highlight! link Float Number
    highlight Function NONE | highlight Function term=NONE cterm=NONE gui=NONE guifg=#eeeff8
    highlight Identifier NONE | highlight Identifier term=NONE cterm=NONE gui=NONE guifg=#eeeff8
    highlight Ignore NONE | highlight! link Ignore Normal
    highlight Include NONE | highlight! link Include PreProc
    highlight Keyword NONE | highlight Keyword term=NONE cterm=NONE gui=NONE guifg=#77b1dd
    highlight Label NONE | highlight! link Label Statement
    highlight Macro NONE | highlight! link Macro PreProc
    highlight Number NONE | highlight! link Number Constant
    highlight Operator NONE | highlight Operator term=NONE cterm=NONE gui=NONE guifg=#c4c8e7
    highlight PreCondit NONE | highlight! link PreCondit PreProc
    highlight PreProc NONE | highlight PreProc term=NONE cterm=NONE gui=NONE guifg=#c4c8e7
    highlight Repeat NONE | highlight! link Repeat Statement
    highlight Special NONE | highlight Special term=NONE cterm=NONE gui=NONE guifg=#a4a8a8
    highlight SpecialChar NONE | highlight! link SpecialChar Special
    highlight SpecialComment NONE | highlight! link SpecialComment Special
    highlight Statement NONE | highlight Statement term=NONE cterm=NONE gui=NONE guifg=#eeeff8
    highlight StorageClass NONE | highlight! link StorageClass Type
    highlight String NONE | highlight String term=NONE cterm=NONE gui=NONE guifg=#72b180
    highlight Structure NONE | highlight! link Structure Type
    highlight Tag NONE | highlight! link Tag Special
    highlight Todo NONE | highlight Todo term=bold cterm=bold gui=bold guifg=#a4a8a8
    highlight Type NONE | highlight Type term=NONE cterm=NONE gui=NONE guifg=#77b1dd
    highlight Typedef NONE | highlight! link Typedef Type
  else
    if get(g:, 'granite_transparent', 0)
      highlight Normal NONE | highlight Normal term=NONE cterm=NONE gui=NONE guifg=#14161b guibg=NONE
      highlight SignColumn NONE | highlight SignColumn term=NONE cterm=NONE gui=NONE guifg=#696b6b guibg=NONE
    else
      highlight Normal NONE | highlight Normal term=NONE cterm=NONE gui=NONE guifg=#14161b guibg=#fbfbfb
      highlight SignColumn NONE | highlight SignColumn term=NONE cterm=NONE gui=NONE guifg=#696b6b guibg=#fbfbfb
    endif

    highlight Added NONE | highlight Added term=NONE cterm=NONE gui=NONE guifg=#406749
    highlight Changed NONE | highlight Changed term=NONE cterm=NONE gui=NONE guifg=#40627c
    highlight ColorColumn NONE | highlight ColorColumn term=NONE cterm=NONE gui=NONE guibg=#eeeeee
    highlight ComplHint NONE | highlight! link ComplHint NonText
    highlight ComplHintMore NONE | highlight! link ComplHintMore MoreMsg
    highlight ComplMatchIns NONE
    highlight Conceal NONE | highlight Conceal term=NONE cterm=NONE gui=NONE guifg=#eeeeee
    highlight CurSearch NONE | highlight CurSearch term=NONE cterm=NONE gui=NONE guifg=#fbfbfb guibg=#846a45
    highlight Cursor NONE | highlight Cursor term=NONE cterm=NONE gui=NONE guifg=#fbfbfb guibg=#14161b
    highlight CursorColumn NONE | highlight CursorColumn term=NONE cterm=NONE gui=NONE guibg=#eeeeee
    highlight CursorIM NONE | highlight! link CursorIM Cursor
    highlight CursorLine NONE | highlight CursorLine term=NONE cterm=NONE gui=NONE guibg=#eeeeee
    highlight CursorLineFold NONE | highlight! link CursorLineFold FoldColumn
    highlight CursorLineNr NONE | highlight CursorLineNr term=bold cterm=bold gui=bold
    highlight CursorLineSign NONE | highlight! link CursorLineSign SignColumn
    highlight DiffAdd NONE | highlight DiffAdd term=NONE cterm=NONE gui=NONE guifg=#23262d guibg=#406749
    highlight DiffChange NONE | highlight DiffChange term=NONE cterm=NONE gui=NONE guifg=#23262d guibg=#40627c
    highlight DiffDelete NONE | highlight DiffDelete term=NONE cterm=NONE gui=NONE guifg=#a33b3d
    highlight DiffText NONE | highlight DiffText term=NONE cterm=NONE gui=NONE guifg=#23262d guibg=#40627c
    highlight DiffTextAdd NONE | highlight! link DiffTextAdd DiffText
    highlight Directory NONE | highlight Directory term=NONE cterm=NONE gui=NONE guifg=#14161b
    highlight EndOfBuffer NONE | highlight! link EndOfBuffer NonText
    highlight ErrorMsg NONE | highlight ErrorMsg term=NONE cterm=NONE gui=NONE guifg=#a33b3d
    highlight FloatBorder NONE | highlight! link FloatBorder NormalFloat
    highlight FloatFooter NONE | highlight! link FloatFooter FloatTitle
    highlight FloatShadow NONE | highlight FloatShadow term=NONE cterm=NONE gui=NONE guibg=#eeeeee
    highlight FloatShadowThrough NONE | highlight FloatShadowThrough term=NONE cterm=NONE gui=NONE guibg=#eeeeee
    highlight FloatTitle NONE | highlight! link FloatTitle Title
    highlight FoldColumn NONE | highlight! link FoldColumn SignColumn
    highlight Folded NONE | highlight Folded term=NONE cterm=NONE gui=NONE guifg=#23262d guibg=#eeeeee
    highlight IncSearch NONE | highlight! link IncSearch CurSearch
    highlight LineNr NONE | highlight LineNr term=NONE cterm=NONE gui=NONE guifg=#696b6b
    highlight LineNrAbove NONE | highlight! link LineNrAbove LineNr
    highlight LineNrBelow NONE | highlight! link LineNrBelow LineNr
    highlight MatchParen NONE | highlight MatchParen term=bold cterm=bold gui=bold guibg=#eeeeee
    highlight ModeMsg NONE | highlight ModeMsg term=NONE cterm=NONE gui=NONE guifg=#696b6b
    highlight MoreMsg NONE | highlight MoreMsg term=NONE cterm=NONE gui=NONE guifg=#40627c
    highlight MsgArea NONE
    highlight MsgSeparator NONE | highlight! link MsgSeparator StatusLine
    highlight NonText NONE | highlight NonText term=NONE cterm=NONE gui=NONE guifg=#dfdfdf
    highlight NormalFloat NONE | highlight NormalFloat term=NONE cterm=NONE gui=NONE guibg=#eeeeee
    highlight NormalNC NONE
    highlight OkMsg NONE | highlight OkMsg term=NONE cterm=NONE gui=NONE guifg=#406749
    highlight Pmenu NONE | highlight Pmenu term=NONE cterm=NONE gui=NONE guibg=#eeeeee
    highlight PmenuBorder NONE | highlight! link PmenuBorder Pmenu
    highlight PmenuExtra NONE | highlight! link PmenuExtra Pmenu
    highlight PmenuExtraSel NONE | highlight! link PmenuExtraSel PmenuSel
    highlight PmenuKind NONE | highlight! link PmenuKind Pmenu
    highlight PmenuKindSel NONE | highlight! link PmenuKindSel PmenuSel
    highlight PmenuMatch NONE | highlight PmenuMatch term=bold cterm=bold gui=bold
    highlight PmenuMatchSel NONE | highlight PmenuMatchSel term=bold cterm=bold gui=bold
    highlight PmenuSbar NONE | highlight! link PmenuSbar Pmenu
    highlight PmenuSel NONE | highlight PmenuSel term=reverse cterm=reverse gui=reverse
    highlight PmenuShadow NONE | highlight! link PmenuShadow FloatShadow
    highlight PmenuShadowThrough NONE | highlight! link PmenuShadowThrough FloatShadowThrough
    highlight PmenuThumb NONE | highlight PmenuThumb term=NONE cterm=NONE gui=NONE guibg=#696b6b
    highlight PreInsert NONE | highlight PreInsert term=NONE cterm=NONE gui=NONE guifg=#696b6b
    highlight Question NONE | highlight Question term=NONE cterm=NONE gui=NONE guibg=#40627c
    highlight QuickFixLine NONE | highlight QuickFixLine term=NONE cterm=NONE gui=NONE guibg=#40627c
    highlight RedrawDebugClear NONE | highlight RedrawDebugClear term=NONE cterm=NONE gui=NONE guibg=#846a45
    highlight RedrawDebugComposed NONE | highlight RedrawDebugComposed term=NONE cterm=NONE gui=NONE guibg=#406749
    highlight RedrawDebugNormal NONE | highlight RedrawDebugNormal term=reverse cterm=reverse gui=reverse
    highlight RedrawDebugRecompose NONE | highlight RedrawDebugRecompose term=NONE cterm=NONE gui=NONE guibg=#a33b3d
    highlight Removed NONE | highlight Removed term=NONE cterm=NONE gui=NONE guifg=#a33b3d
    highlight Search NONE | highlight Search term=NONE cterm=NONE gui=NONE guifg=#fbfbfb guibg=#846a45
    highlight SpecialKey NONE | highlight SpecialKey term=NONE cterm=NONE gui=NONE guifg=#696b6b
    highlight SpellBad NONE | highlight SpellBad term=undercurl cterm=undercurl gui=undercurl guisp=#a33b3d
    highlight SpellCap NONE | highlight SpellCap term=undercurl cterm=undercurl gui=undercurl guisp=#846a45
    highlight SpellLocal NONE | highlight SpellLocal term=undercurl cterm=undercurl gui=undercurl guisp=#406749
    highlight SpellRare NONE | highlight SpellRare term=undercurl cterm=undercurl gui=undercurl guisp=#40627c
    highlight StatusLine NONE | highlight StatusLine term=NONE cterm=NONE gui=NONE guibg=#eeeeee
    highlight StatusLineNC NONE | highlight StatusLineNC term=italic cterm=italic gui=italic guibg=#fbfbfb
    highlight StatusLineTerm NONE | highlight! link StatusLineTerm StatusLine
    highlight StatusLineTermNC NONE | highlight! link StatusLineTermNC StatusLineNC
    highlight StderrMsg NONE | highlight! link StderrMsg ErrorMsg
    highlight StdoutMsg NONE
    highlight Substitute NONE | highlight! link Substitute Search
    highlight TabLine NONE | highlight! link TabLine StatusLineNC
    highlight TabLineFill NONE | highlight! link TabLineFill TabLine
    highlight TabLineSel NONE | highlight TabLineSel term=bold cterm=bold gui=bold
    highlight TermCursor NONE | highlight TermCursor term=reverse cterm=reverse gui=reverse
    highlight Title NONE | highlight Title term=bold cterm=bold gui=bold guifg=#696b6b
    highlight Underlined NONE | highlight Underlined term=underline cterm=underline gui=underline
    highlight VertSplit NONE | highlight! link VertSplit WinSeparator
    highlight Visual NONE | highlight Visual term=NONE cterm=NONE gui=NONE guibg=#aeaeae
    highlight VisualNOS NONE | highlight! link VisualNOS Visual
    highlight WarningMsg NONE | highlight WarningMsg term=NONE cterm=NONE gui=NONE guifg=#846a45
    highlight Whitespace NONE | highlight! link Whitespace NonText
    highlight WildMenu NONE | highlight! link WildMenu PmenuSel
    highlight WinBar NONE | highlight WinBar term=bold cterm=bold gui=bold
    highlight WinBarNC NONE | highlight WinBarNC term=italic cterm=italic gui=italic
    highlight WinSeparator NONE | highlight! link WinSeparator Normal
    highlight lCursor NONE | highlight lCursor term=NONE cterm=NONE gui=NONE guifg=#fbfbfb guibg=#14161b

    highlight Boolean NONE | highlight! link Boolean Constant
    highlight Character NONE | highlight! link Character String
    highlight Comment NONE | highlight Comment term=italic cterm=italic gui=italic guifg=#696b6b
    highlight Conditional NONE | highlight! link Conditional Statement
    highlight Constant NONE | highlight Constant term=NONE cterm=NONE gui=NONE guifg=#40627c
    highlight Debug NONE | highlight! link Debug Special
    highlight Define NONE | highlight! link Define PreProc
    highlight Delimiter NONE | highlight Delimiter term=NONE cterm=NONE gui=NONE guifg=#696b6b
    highlight Error NONE | highlight Error term=NONE cterm=NONE gui=NONE guifg=#696b6b guibg=#a33b3d
    highlight Exception NONE | highlight! link Exception Statement
    highlight Float NONE | highlight! link Float Number
    highlight Function NONE | highlight Function term=NONE cterm=NONE gui=NONE guifg=#14161b
    highlight Identifier NONE | highlight Identifier term=NONE cterm=NONE gui=NONE guifg=#14161b
    highlight Ignore NONE | highlight! link Ignore Normal
    highlight Include NONE | highlight! link Include PreProc
    highlight Keyword NONE | highlight Keyword term=NONE cterm=NONE gui=NONE guifg=#40627c
    highlight Label NONE | highlight! link Label Statement
    highlight Macro NONE | highlight! link Macro PreProc
    highlight Number NONE | highlight! link Number Constant
    highlight Operator NONE | highlight Operator term=NONE cterm=NONE gui=NONE guifg=#23262d
    highlight PreCondit NONE | highlight! link PreCondit PreProc
    highlight PreProc NONE | highlight PreProc term=NONE cterm=NONE gui=NONE guifg=#23262d
    highlight Repeat NONE | highlight! link Repeat Statement
    highlight Special NONE | highlight Special term=NONE cterm=NONE gui=NONE guifg=#696b6b
    highlight SpecialChar NONE | highlight! link SpecialChar Special
    highlight SpecialComment NONE | highlight! link SpecialComment Special
    highlight Statement NONE | highlight Statement term=NONE cterm=NONE gui=NONE guifg=#14161b
    highlight StorageClass NONE | highlight! link StorageClass Type
    highlight String NONE | highlight String term=NONE cterm=NONE gui=NONE guifg=#406749
    highlight Structure NONE | highlight! link Structure Type
    highlight Tag NONE | highlight! link Tag Special
    highlight Todo NONE | highlight Todo term=bold cterm=bold gui=bold guifg=#696b6b
    highlight Type NONE | highlight Type term=NONE cterm=NONE gui=NONE guifg=#40627c
    highlight Typedef NONE | highlight! link Typedef Type
  endif
endfunction
