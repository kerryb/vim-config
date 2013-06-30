" AdCode, a vivid Ruby-centric Vim colorscheme by Adam Whittingham
let g:colors_name = "AdCode"

" Behaviour
set t_Co=256
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

"  Main
hi Normal                   guifg=#faf4c6 guibg=#121212 guisp=#121212 gui=NONE                  ctermfg=254  ctermbg=NONE cterm=NONE
hi Default                  guifg=#faf4c6 guibg=#121212 guisp=#121212 gui=NONE                  ctermfg=254  ctermbg=NONE cterm=NONE
hi Visual                   guifg=#faf4c6 guibg=#3c414c guisp=#3c414c gui=NONE                  ctermfg=230  ctermbg=239  cterm=NONE

"  Vim_Elements
hi Cursor                   guifg=NONE    guibg=#626262 guisp=#626262 gui=NONE                  ctermfg=NONE ctermbg=241  cterm=NONE
hi CursorColumn             guifg=NONE    guibg=#202020 guisp=#202020 gui=NONE                  ctermfg=NONE ctermbg=234  cterm=NONE
hi CursorLine               guifg=NONE    guibg=#202020 guisp=#202020 gui=NONE                  ctermfg=NONE ctermbg=234  cterm=NONE
hi Folded                   guifg=#a0a8b0 guibg=#384048 guisp=#384048 gui=NONE                  ctermfg=103  ctermbg=238  cterm=NONE
hi LineNr                   guifg=NONE    guibg=#202020 guisp=#202020 gui=NONE                  ctermfg=NONE ctermbg=234  cterm=NONE
hi PMenu                    guifg=#ffffff guibg=#202020 guisp=#202020 gui=NONE                  ctermfg=15   ctermbg=234  cterm=NONE
hi PMenuSbar                guifg=NONE    guibg=#202020 guisp=#202020 gui=NONE                  ctermfg=NONE ctermbg=234  cterm=NONE
hi PMenuSel                 guifg=#000000 guibg=#e0dd26 guisp=#e0dd26 gui=bold                  ctermfg=NONE ctermbg=184  cterm=bold
hi PMenuThumb               guifg=NONE    guibg=#303030 guisp=#303030 gui=NONE                  ctermfg=NONE ctermbg=236  cterm=NONE
hi SignColumn               guifg=#faf4c6 guibg=#202020 guisp=#202020 gui=NONE                  ctermfg=15   ctermbg=234  cterm=NONE
hi StatusLine               guifg=#d3d3d5 guibg=#303030 guisp=#303030 gui=NONE                  ctermfg=188  ctermbg=236  cterm=NONE
hi StatusLineNC             guifg=#939395 guibg=#303030 guisp=#303030 gui=NONE                  ctermfg=246  ctermbg=236  cterm=NONE
hi VertSplit                guifg=#444444 guibg=#303030 guisp=#303030 gui=NONE                  ctermfg=238  ctermbg=236  cterm=NONE

"  Programming_Basics
hi Boolean                  guifg=#e6ff00 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=149  ctermbg=NONE cterm=NONE
hi Character                guifg=#ff9800 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=208  ctermbg=NONE cterm=NONE
hi Comment                  guifg=#646478 guibg=NONE    guisp=NONE    gui=italic                ctermfg=60   ctermbg=NONE cterm=NONE
hi Conditional              guifg=#7e8aa2 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=103  ctermbg=NONE cterm=NONE
hi Constant                 guifg=#ffff00 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=11   ctermbg=NONE cterm=NONE
hi Debug                    guifg=#ff9800 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=208  ctermbg=NONE cterm=NONE
hi Define                   guifg=#faf4c6 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=230  ctermbg=NONE cterm=NONE
hi Delimiter                guifg=#ff9800 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=208  ctermbg=NONE cterm=NONE
hi Exception                guifg=#d00200 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=160  ctermbg=NONE cterm=NONE
hi Float                    guifg=#ff9800 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=208  ctermbg=NONE cterm=NONE
hi Function                 guifg=#ffff00 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=11   ctermbg=NONE cterm=NONE
hi Identifier               guifg=#c6de10 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=148  ctermbg=NONE cterm=NONE
hi Include                  guifg=#faf4c6 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=230  ctermbg=NONE cterm=NONE
hi Keyword                  guifg=#00c4ff guibg=NONE    guisp=NONE    gui=bold                  ctermfg=45   ctermbg=NONE cterm=bold
hi Label                    guifg=#7e8aa2 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=103  ctermbg=NONE cterm=NONE
hi MatchParen               guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold,underline        ctermfg=193  ctermbg=234  cterm=bold,underline
hi Number                   guifg=#00c99b guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=190  ctermbg=NONE cterm=NONE
hi Operator                 guifg=#7e8aa2 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=103  ctermbg=NONE cterm=NONE
hi Special                  guifg=#84ff00 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=118  ctermbg=NONE cterm=NONE
hi Statement                guifg=#8c5fe6 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=98   ctermbg=NONE cterm=NONE
hi String                   guifg=#5dff05 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=82   ctermbg=NONE cterm=NONE
hi Structure                guifg=#7e8aa2 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=103  ctermbg=NONE cterm=NONE
hi Title                    guifg=#f6f3e8 guibg=NONE    guisp=NONE    gui=bold                  ctermfg=230  ctermbg=NONE cterm=bold
hi Todo                     guifg=#8f8f8f guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=245  ctermbg=NONE cterm=NONE
hi Type                     guifg=#54c0ff guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=81   ctermbg=NONE cterm=NONE
hi Typedef                  guifg=#7e8aa2 guibg=NONE    guisp=NONE    gui=NONE                  ctermfg=103  ctermbg=NONE cterm=NONE

"  Ruby
hi rubyAccess               guifg=#a40073 guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
hi rubyClass                guifg=#a40073 guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
hi rubyDefine               guifg=#aa2266 guibg=NONE guisp=NONE gui=bold ctermfg=125 ctermbg=NONE cterm=bold
hi rubyInteger              guifg=#00c99b guibg=NONE guisp=NONE gui=NONE ctermfg=125 ctermbg=NONE cterm=NONE
hi rubyControl              guifg=#cc55dd guibg=NONE guisp=NONE gui=NONE ctermfg=162 ctermbg=NONE cterm=NONE
hi rubyConstant             guifg=#8c5fe6 guibg=NONE guisp=NONE gui=NONE ctermfg=17  ctermbg=NONE cterm=NONE
hi rubyClassDeclaration     guifg=#00c99b guibg=NONE guisp=NONE gui=NONE ctermfg=43  ctermbg=NONE cterm=NONE
hi rubyIdentifier           guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi rubyInstanceVariable     guifg=#96ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE
hi rubySymbol               guifg=#00c4ff guibg=NONE guisp=NONE gui=NONE ctermfg=45  ctermbg=NONE cterm=NONE
hi rubyBlockParameter       guifg=#1199ff guibg=NONE guisp=NONE gui=NONE ctermfg=33  ctermbg=NONE cterm=NONE
hi rubyBlockParameterList   guifg=#FFFFFF guibg=NONE guisp=NONE gui=bold ctermfg=231 ctermbg=NONE cterm=bold
hi rubyClassVariable        guifg=#ffcc11 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi rubyGlobalVariable       guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11  ctermbg=NONE cterm=NONE
hi rubyFunction             guifg=#00c4ff guibg=NONE guisp=NONE gui=NONE ctermfg=45  ctermbg=NONE cterm=NONE
hi rubyPredefinedIdentifier guifg=#de5577 guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi rubyRegexp               guifg=#dd0093 guibg=NONE guisp=NONE gui=NONE ctermfg=162 ctermbg=NONE cterm=NONE
hi rubyRegexpdelimiter      guifg=#540063 guibg=NONE guisp=NONE gui=NONE ctermfg=53  ctermbg=NONE cterm=NONE
hi rubyStringDelimiter      guifg=#96ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE
hi rubyRegexpspecial        guifg=#a40073 guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
hi rubyInclude              guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE

"  NERD_Tree
hi NERDTreeCWD              guifg=#96ff00 ctermfg=118   gui=none
hi NERDTreeDir              guifg=#FFC912 ctermfg=74    gui=none
hi NERDTreeDirSlash         guifg=#FFC912 ctermfg=74    gui=none

"  HTML
hi htmlTag                  guifg=#00c900 ctermfg=2     gui=none
hi htmlTagN                 guifg=#00c900 ctermfg=2     gui=none
hi htmlSpecialTagName       guifg=#00c900 ctermfg=2     gui=none
hi htmlEndTag               guifg=#00c900 ctermfg=2     gui=none
hi htmlArg                  guifg=#009cff ctermfg=39    gui=none
hi htmlString               guifg=#96ff00 ctermfg=118   gui=none
hi htmlTagName              guifg=#00c900 ctermfg=2     gui=none
hi htmlLink                 guifg=#FFFFFF ctermfg=15    gui=none
hi htmlComment              guifg=#FFFFFF ctermfg=15    gui=none
hi htmlCommentPart          guifg=#BBBBBB ctermfg=250   gui=none
hi htmlCSSStyleComment      guifg=#BBBBBB ctermfg=250   gui=none
hi htmlitalic               guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic                ctermfg=252  ctermbg=234  cterm=NONE
hi htmlboldunderlineitalic  guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic,underline ctermfg=252  ctermbg=234  cterm=bold,underline
hi htmlbolditalic           guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic           ctermfg=252  ctermbg=234  cterm=bold
hi htmlunderlineitalic      guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic,underline      ctermfg=252  ctermbg=234  cterm=underline
hi htmlbold                 guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold                  ctermfg=252  ctermbg=234  cterm=bold
hi htmlboldunderline        guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,underline        ctermfg=252  ctermbg=234  cterm=bold,underline
hi htmlunderline            guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=underline             ctermfg=252  ctermbg=234  cterm=underline

"  CSS
hi cssTagName               guifg=#FFFFFF ctermfg=15    gui=none
hi cssAttributeSelector     guifg=#DDDDDD ctermfg=15    gui=none
hi cssSelectorOp            guifg=#DDDDDD ctermfg=15    gui=none
hi cssSelectorOp2           guifg=#DDDDDD ctermfg=15    gui=none
hi cssColorProp             guifg=#FFC912 ctermfg=220   gui=none
hi cssBoxProp               guifg=#FFC912 ctermfg=220   gui=none
hi cssTextAttr              guifg=#009cff ctermfg=220   gui=none
hi cssDefinition            guifg=#009cff ctermfg=135   gui=none
hi cssFunctionName          guifg=#009cff ctermfg=135   gui=none
hi cssURL                   guifg=#009cff ctermfg=135   gui=none
hi cssBoxAttr               guifg=#B04DFF ctermfg=135   gui=none
hi cssCommonAttr            guifg=#B04DFF ctermfg=135   gui=none
hi cssStringQQ              guifg=#00c900 ctermfg=135   gui=none
hi cssColor                 guifg=#00c900 ctermfg=135   gui=none
hi cssDefinition            guifg=#B04DFF ctermfg=135   gui=none
hi cssRenderProp            guifg=#009cff ctermfg=39    gui=none
hi cssTextProp              guifg=#FFC912 ctermfg=39    gui=none
hi cssTableProp             guifg=#FFC912 ctermfg=39    gui=none
hi cssFontProp              guifg=#FFC912 ctermfg=39    gui=none
hi cssFontAttr              guifg=#009cff ctermfg=39    gui=none
hi cssColorAttr             guifg=#009cff ctermfg=39    gui=none
hi cssGeneratedContentProp  guifg=#FFC912 ctermfg=39    gui=none

"  Javascript
hi javaScript               guifg=#FFFFFF ctermfg=15    gui=none
hi javaScriptGlobal         guifg=#FFFFFF ctermfg=15    gui=none
hi javaScriptNumber         guifg=#00c99b ctermfg=42    gui=none
hi javaScriptIdentifier     guifg=#FFC912 ctermfg=220   gui=none
hi javaScriptOperator       guifg=#FFC912 ctermfg=220   gui=none
hi javaScriptFunction       guifg=#FFC912 ctermfg=220   gui=none
hi javaScriptStatement      guifg=#FFC912 ctermfg=220   gui=none
hi javaScriptNull           guifg=#FF2BC5 ctermfg=206   gui=none
hi javaScriptMember         guifg=#00c900 ctermfg=2     gui=none
