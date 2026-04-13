" SPDX-FileCopyrightText: © 2026 Antti Kivi <antti@anttikivi.com>
"
" SPDX-License-Identifier: GPL-3.0-or-later

" This file is generated using generate.lua. Do not edit manually.

function! granite#Load() abort
  if &background ==# 'dark'
    if get(g:, 'granite_transparent', 0)
      highlight Normal guifg=#eeeff8 guibg=NONE
      highlight SignColumn guifg=#a4a8a8 guibg=NONE
    else
      highlight Normal guifg=#eeeff8 guibg=#14161b
      highlight SignColumn guifg=#a4a8a8 guibg=#14161b
    endif

    highlight Added guifg=#72b180
    highlight Changed guifg=#77b1dd
    highlight ColorColumn guibg=#22252c
    highlight link ComplHint NonText
    highlight link ComplHintMore MoreMsg
    highlight link ComplMatchIns NONE
    highlight Conceal guifg=#22252c
    highlight CurSearch guifg=#14161b guibg=#cca56d
    highlight Cursor guifg=#14161b guibg=#eeeff8
    highlight CursorColumn guibg=#22252c
    highlight link CursorIM Cursor
    highlight CursorLine guibg=#22252c
    highlight link CursorLineFold FoldColumn
    highlight CursorLineNr gui=bold
    highlight link CursorLineSign SignColumn
    highlight DiffAdd guifg=#c4c8e7 guibg=#72b180
    highlight DiffChange guifg=#c4c8e7 guibg=#77b1dd
    highlight DiffDelete guifg=#e08c8e
    highlight DiffText guifg=#c4c8e7 guibg=#77b1dd
    highlight link DiffTextAdd DiffText
    highlight Directory guifg=#eeeff8
    highlight link EndOfBuffer NonText
    highlight ErrorMsg guifg=#e08c8e
    highlight link FloatBorder NormalFloat
    highlight link FloatFooter FloatTitle
    highlight FloatShadow guibg=#22252c
    highlight FloatShadowThrough guibg=#22252c
    highlight link FloatTitle Title
    highlight link FoldColumn SignColumn
    highlight Folded guifg=#c4c8e7 guibg=#22252c
    highlight link IncSearch CurSearch
    highlight LineNr guifg=#a4a8a8
    highlight link LineNrAbove LineNr
    highlight link LineNrBelow LineNr
    highlight MatchParen gui=bold guibg=#22252c
    highlight ModeMsg guifg=#a4a8a8
    highlight MoreMsg guifg=#77b1dd
    highlight link MsgArea NONE
    highlight link MsgSeparator StatusLine
    highlight NonText guifg=#2e313a
    highlight NormalFloat guibg=#22252c
    highlight link NormalNC NONE
    highlight OkMsg guifg=#72b180
    highlight Pmenu guibg=#22252c
    highlight link PmenuBorder Pmenu
    highlight link PmenuExtra Pmenu
    highlight link PmenuExtraSel PmenuSel
    highlight link PmenuKind Pmenu
    highlight link PmenuKindSel PmenuSel
    highlight PmenuMatch gui=bold
    highlight PmenuMatchSel gui=bold
    highlight link PmenuSbar Pmenu
    highlight PmenuSel gui=reverse
    highlight link PmenuShadow FloatShadow
    highlight link PmenuShadowThrough FloatShadowThrough
    highlight PmenuThumb guibg=#a4a8a8
    highlight PreInsert guifg=#a4a8a8
    highlight Question guibg=#77b1dd
    highlight QuickFixLine guibg=#77b1dd
    highlight RedrawDebugClear guibg=#cca56d
    highlight RedrawDebugComposed guibg=#72b180
    highlight RedrawDebugNormal gui=reverse
    highlight RedrawDebugRecompose guibg=#e08c8e
    highlight Removed guifg=#e08c8e
    highlight Search guifg=#14161b guibg=#cca56d
    highlight SpecialKey guifg=#a4a8a8
    highlight SpellBad gui=undercurl guisp=#e08c8e
    highlight SpellCap gui=undercurl guisp=#cca56d
    highlight SpellLocal gui=undercurl guisp=#72b180
    highlight SpellRare gui=undercurl guisp=#77b1dd
    highlight StatusLine guibg=#22252c
    highlight StatusLineNC gui=italic guibg=#14161b
    highlight link StatusLineTerm StatusLine
    highlight link StatusLineTermNC StatusLineNC
    highlight link StderrMsg ErrorMsg
    highlight link StdoutMsg NONE
    highlight link Substitute Search
    highlight link TabLine StatusLineNC
    highlight link TabLineFill TabLine
    highlight TabLineSel gui=bold
    highlight TermCursor gui=reverse
    highlight Title gui=bold guifg=#a4a8a8
    highlight Underlined gui=underline
    highlight link VertSplit WinSeparator
    highlight Visual guibg=#616464
    highlight link VisualNOS Visual
    highlight WarningMsg guifg=#cca56d
    highlight link Whitespace NonText
    highlight link WildMenu PmenuSel
    highlight WinBar gui=bold
    highlight WinBarNC gui=italic
    highlight link WinSeparator Normal
    highlight lCursor guifg=#14161b guibg=#eeeff8

    highlight link Boolean Constant
    highlight link Character String
    highlight Comment gui=italic guifg=#a4a8a8
    highlight link Conditional Statement
    highlight Constant guifg=#77b1dd
    highlight link Debug Special
    highlight link Define PreProc
    highlight Delimiter guifg=#a4a8a8
    highlight Error guifg=#a4a8a8 guibg=#e08c8e
    highlight link Exception Statement
    highlight link Float Number
    highlight Function guifg=#eeeff8
    highlight Identifier guifg=#eeeff8
    highlight link Ignore Normal
    highlight link Include PreProc
    highlight Keyword guifg=#77b1dd
    highlight link Label Statement
    highlight link Macro PreProc
    highlight link Number Constant
    highlight Operator guifg=#c4c8e7
    highlight link PreCondit PreProc
    highlight PreProc guifg=#c4c8e7
    highlight link Repeat Statement
    highlight Special guifg=#a4a8a8
    highlight link SpecialChar Special
    highlight link SpecialComment Special
    highlight Statement guifg=#eeeff8
    highlight link StorageClass Type
    highlight String guifg=#72b180
    highlight link Structure Type
    highlight link Tag Special
    highlight Todo gui=bold guifg=#a4a8a8
    highlight Type guifg=#77b1dd
    highlight link Typedef Type
  else
    if get(g:, 'granite_transparent', 0)
      highlight Normal guifg=#14161b guibg=NONE
      highlight SignColumn guifg=#696b6b guibg=NONE
    else
      highlight Normal guifg=#14161b guibg=#fbfbfb
      highlight SignColumn guifg=#696b6b guibg=#fbfbfb
    endif

    highlight Added guifg=#406749
    highlight Changed guifg=#40627c
    highlight ColorColumn guibg=#eeeeee
    highlight link ComplHint NonText
    highlight link ComplHintMore MoreMsg
    highlight link ComplMatchIns NONE
    highlight Conceal guifg=#eeeeee
    highlight CurSearch guifg=#fbfbfb guibg=#846a45
    highlight Cursor guifg=#fbfbfb guibg=#14161b
    highlight CursorColumn guibg=#eeeeee
    highlight link CursorIM Cursor
    highlight CursorLine guibg=#eeeeee
    highlight link CursorLineFold FoldColumn
    highlight CursorLineNr gui=bold
    highlight link CursorLineSign SignColumn
    highlight DiffAdd guifg=#23262d guibg=#406749
    highlight DiffChange guifg=#23262d guibg=#40627c
    highlight DiffDelete guifg=#a33b3d
    highlight DiffText guifg=#23262d guibg=#40627c
    highlight link DiffTextAdd DiffText
    highlight Directory guifg=#14161b
    highlight link EndOfBuffer NonText
    highlight ErrorMsg guifg=#a33b3d
    highlight link FloatBorder NormalFloat
    highlight link FloatFooter FloatTitle
    highlight FloatShadow guibg=#eeeeee
    highlight FloatShadowThrough guibg=#eeeeee
    highlight link FloatTitle Title
    highlight link FoldColumn SignColumn
    highlight Folded guifg=#23262d guibg=#eeeeee
    highlight link IncSearch CurSearch
    highlight LineNr guifg=#696b6b
    highlight link LineNrAbove LineNr
    highlight link LineNrBelow LineNr
    highlight MatchParen gui=bold guibg=#eeeeee
    highlight ModeMsg guifg=#696b6b
    highlight MoreMsg guifg=#40627c
    highlight link MsgArea NONE
    highlight link MsgSeparator StatusLine
    highlight NonText guifg=#dfdfdf
    highlight NormalFloat guibg=#eeeeee
    highlight link NormalNC NONE
    highlight OkMsg guifg=#406749
    highlight Pmenu guibg=#eeeeee
    highlight link PmenuBorder Pmenu
    highlight link PmenuExtra Pmenu
    highlight link PmenuExtraSel PmenuSel
    highlight link PmenuKind Pmenu
    highlight link PmenuKindSel PmenuSel
    highlight PmenuMatch gui=bold
    highlight PmenuMatchSel gui=bold
    highlight link PmenuSbar Pmenu
    highlight PmenuSel gui=reverse
    highlight link PmenuShadow FloatShadow
    highlight link PmenuShadowThrough FloatShadowThrough
    highlight PmenuThumb guibg=#696b6b
    highlight PreInsert guifg=#696b6b
    highlight Question guibg=#40627c
    highlight QuickFixLine guibg=#40627c
    highlight RedrawDebugClear guibg=#846a45
    highlight RedrawDebugComposed guibg=#406749
    highlight RedrawDebugNormal gui=reverse
    highlight RedrawDebugRecompose guibg=#a33b3d
    highlight Removed guifg=#a33b3d
    highlight Search guifg=#fbfbfb guibg=#846a45
    highlight SpecialKey guifg=#696b6b
    highlight SpellBad gui=undercurl guisp=#a33b3d
    highlight SpellCap gui=undercurl guisp=#846a45
    highlight SpellLocal gui=undercurl guisp=#406749
    highlight SpellRare gui=undercurl guisp=#40627c
    highlight StatusLine guibg=#eeeeee
    highlight StatusLineNC gui=italic guibg=#fbfbfb
    highlight link StatusLineTerm StatusLine
    highlight link StatusLineTermNC StatusLineNC
    highlight link StderrMsg ErrorMsg
    highlight link StdoutMsg NONE
    highlight link Substitute Search
    highlight link TabLine StatusLineNC
    highlight link TabLineFill TabLine
    highlight TabLineSel gui=bold
    highlight TermCursor gui=reverse
    highlight Title gui=bold guifg=#696b6b
    highlight Underlined gui=underline
    highlight link VertSplit WinSeparator
    highlight Visual guibg=#aeaeae
    highlight link VisualNOS Visual
    highlight WarningMsg guifg=#846a45
    highlight link Whitespace NonText
    highlight link WildMenu PmenuSel
    highlight WinBar gui=bold
    highlight WinBarNC gui=italic
    highlight link WinSeparator Normal
    highlight lCursor guifg=#fbfbfb guibg=#14161b

    highlight link Boolean Constant
    highlight link Character String
    highlight Comment gui=italic guifg=#696b6b
    highlight link Conditional Statement
    highlight Constant guifg=#40627c
    highlight link Debug Special
    highlight link Define PreProc
    highlight Delimiter guifg=#696b6b
    highlight Error guifg=#696b6b guibg=#a33b3d
    highlight link Exception Statement
    highlight link Float Number
    highlight Function guifg=#14161b
    highlight Identifier guifg=#14161b
    highlight link Ignore Normal
    highlight link Include PreProc
    highlight Keyword guifg=#40627c
    highlight link Label Statement
    highlight link Macro PreProc
    highlight link Number Constant
    highlight Operator guifg=#23262d
    highlight link PreCondit PreProc
    highlight PreProc guifg=#23262d
    highlight link Repeat Statement
    highlight Special guifg=#696b6b
    highlight link SpecialChar Special
    highlight link SpecialComment Special
    highlight Statement guifg=#14161b
    highlight link StorageClass Type
    highlight String guifg=#406749
    highlight link Structure Type
    highlight link Tag Special
    highlight Todo gui=bold guifg=#696b6b
    highlight Type guifg=#40627c
    highlight link Typedef Type
  endif
endfunction
