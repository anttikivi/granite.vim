" SPDX-FileCopyrightText: © 2026 Antti Kivi <antti@anttikivi.com>
"
" SPDX-License-Identifier: GPL-3.0-or-later

if has('nvim')
  lua require("granite").load()
else
  highlight clear

  if exists('syntax_on')
    syntax reset
  endif

  let g:colors_name = 'granite'

  call granite#Load()
endif
