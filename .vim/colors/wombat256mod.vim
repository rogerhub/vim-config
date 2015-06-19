" Vim color file
" Original Maintainer:  Lars H. Nielsen (dengmao@gmail.com)
" Last Change:  2010-07-23
"
" Modified version of wombat for 256-color terminals by
"   David Liang (bmdavll@gmail.com)
" based on version by
"   Danila Bespalov (danila.bespalov@gmail.com)

set background=dark

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "wombat256mod"


" General colors
hi Normal       guifg=#e3e0d7   guibg=#242424   gui=none
hi Cursor       guifg=#242424   guibg=#eae788   gui=none
hi Visual                       guibg=#554d4b   gui=none
hi VisualNOS                    guibg=#303030   gui=none
hi Search       guifg=#d787ff   guibg=#636066   gui=none
hi Folded       guifg=#a0a8b0   guibg=#3a4046   gui=none
hi Title        guifg=#ffffd7                   gui=bold
hi StatusLine   guifg=#ffffd7   guibg=#444444   gui=bold
hi VertSplit    guifg=#444444   guibg=#444444   gui=none
hi StatusLineNC guifg=#857b6f   guibg=#444444   gui=none
hi LineNr       guifg=#857b6f   guibg=#080808   gui=none
hi SpecialKey   guifg=#626262   guibg=#2b2b2b   gui=none
hi WarningMsg   guifg=#ff5f55
hi ErrorMsg     guifg=#ff2026   guibg=#242424   gui=none
hi NonText      guifg=#333333   guibg=#242424   gui=none

" Vim >= 7.0 specific colors
if version >= 700
hi CursorLine                   guibg=#32322f
hi MatchParen   guifg=#eae788   guibg=#857b6f   gui=bold
hi Pmenu        guifg=#ffffd7   guibg=#444444
hi PmenuSel     guifg=#080808   guibg=#cae982
endif

" Diff highlighting
hi DiffAdd                      guibg=#2a0d6a
hi DiffDelete   guifg=#242424   guibg=#3e3969   gui=none
hi DiffText                     guibg=#73186e   gui=none
hi DiffChange                   guibg=#382a37

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu


" Syntax highlighting
hi Keyword      guifg=#88b8f6   gui=none
hi Statement    guifg=#88b8f6   gui=none
hi Constant     guifg=#e5786d   gui=none
hi Number       guifg=#e5786d   gui=none
hi PreProc      guifg=#e5786d   gui=none
hi Function     guifg=#cae982   gui=none
hi Identifier   guifg=#cae982   gui=none
hi Type         guifg=#d4d987   gui=none
hi Special      guifg=#eadead   gui=none
hi String       guifg=#95e454   gui=italic
hi Comment      guifg=#9c998e   gui=italic
hi Todo         guifg=#857b6f   gui=italic


" Links
hi! link FoldColumn     Folded
hi! link CursorColumn   CursorLine


" Custom
hi ExtraWhitespace  guifg=#000000   guibg=#006688   gui=none
hi keywordGreen     guifg=#88ff88   guibg=#446600   gui=none
hi keywordYellow    guifg=#ffff88   guibg=#444400   gui=none
hi keywordRed       guifg=#ff0000                   gui=bold
hi keywordPurple    guifg=#ffddff   guibg=#880088   gui=none

" Multiple cursors
hi multiple_cursors_cursor gui=reverse
hi! link multiple_cursors_visual Visual
