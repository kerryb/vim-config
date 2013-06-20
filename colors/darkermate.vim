"
" Vim Darkermate Theme (darkermate.vim)
"
" Based on the original darkmate.vim
" from github.com/yearofmoo/Vim-Darkmate
" by Matias Niemelä <matias@yearofmoo.com>
"   (which was based on the excellent darkmate Gedit theme by
"   Luigi Maselli <luigix_@t_gmail_com>)
"
" Minor changes by Adam Whittingham <adam.whittingham@gmail.com>
"
" This library is free software; you can redistribute it and/or
" modify it under the terms of the GNU Library General Public
" License as published by the Free Software Foundation; either
" version 2 of the License, or (at your option) any later version.
"
" This library is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
" Library General Public License for more details.
"
" You should have received a copy of the GNU Library General Public
" License along with this library; if not, write to the
" Free Software Foundation, Inc., 59 Temple Place - Suite 330,
" Boston, MA 02111-1307, USA.
"

" Reset the whole thing
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "darkermate"

" Line and Columns
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline

" Main Colors
hi Normal                   guifg=#FFFFFF ctermfg=15  gui=none  guibg=#121212
hi Visual                   guifg=#FFFFFF ctermfg=15  gui=none  guibg=#555753 ctermbg=245
hi SignColumn               guifg=#FFFFFF ctermfg=15  gui=none  guibg=#121212

hi String                   guifg=#96ff00 ctermfg=118 gui=none
hi Delimiter                guifg=#96ff00 ctermfg=118 gui=none
hi Boolean                  guifg=#FF2BC5 ctermfg=206 gui=none
hi Constant                 guifg=#FFFFFF ctermfg=15  gui=none
hi Number                   guifg=#00c99b ctermfg=42  gui=none
hi Statement                guifg=#FFC912 ctermfg=220 gui=none
hi Character                guifg=#FFC912 ctermfg=220 gui=none
hi Comment                  guifg=#B04DFF ctermfg=135 gui=none
hi Repeat                   guifg=#FFC912 ctermfg=220 gui=none
hi Type                     guifg=#009cff ctermfg=39  gui=none
hi Label                    guifg=#FFC912 ctermfg=220 gui=none
hi Conditional              guifg=#FFC912 ctermfg=220 gui=none
hi Exception                guifg=#FFC912 ctermfg=220 gui=none
hi Function                 guifg=#FFFFFF ctermfg=15  gui=none
hi Define                   guifg=#FFC912 ctermfg=220 gui=none
hi LineNr                   guifg=#FFFFFF ctermfg=15  gui=none
hi CursorLine               guibg=#000000 ctermbg=0   gui=none  cterm=none

" Vim Stuff
hi vimGroup                 guifg=#FFFFFF ctermfg=15  gui=none
hi vimHiGroup               guifg=#FFFFFF ctermfg=15  gui=none
hi vimSetEqual              guifg=#FF2BC5 ctermfg=206 gui=none
hi vimSet                   guifg=#FF2BC5 ctermfg=206 gui=none
hi vimOption                guifg=#FFFFFF ctermfg=15  gui=none
hi vimHighLight             guifg=#FFC912 ctermfg=220 gui=none
hi vimNotFunc               guifg=#FFC912 ctermfg=220 gui=none
hi vimCommand               guifg=#FFC912 ctermfg=220 gui=none
hi VertSplit                guifg=#444444 ctermfg=8

" Auto-complete/suggestion box
hi Pmenu                    guifg=#FFFFFF ctermfg=15  guibg=#111111 ctermbg=235 gui=none
hi PmenuSel                 guifg=#FFC912 ctermfg=220 guibg=#161616 ctermbg=230 gui=none

" C                        Stuff
hi cCharacter               guifg=#FFC912 ctermfg=220 gui=none

" Javascript               Stuff
hi javaScript               guifg=#FFFFFF ctermfg=15  gui=none
hi javaScriptGlobal         guifg=#FFFFFF ctermfg=15  gui=none
hi javaScriptNumber         guifg=#00c99b ctermfg=42  gui=none
hi javaScriptIdentifier     guifg=#FFC912 ctermfg=220 gui=none
hi javaScriptOperator       guifg=#FFC912 ctermfg=220 gui=none
hi javaScriptFunction       guifg=#FFC912 ctermfg=220 gui=none
hi javaScriptStatement      guifg=#FFC912 ctermfg=220 gui=none
hi javaScriptNull           guifg=#FF2BC5 ctermfg=206 gui=none
hi javaScriptMember         guifg=#00c900 ctermfg=2   gui=none

" Ruby                     Stuff
hi rubySymbol               guifg=#009cff ctermfg=39  gui=none
hi rubyClassDeclaration     guifg=#FFC912 ctermfg=220 gui=none
hi rubyRailsUserClass       guifg=#FCE94F ctermfg=221 gui=none
hi rubyConstant             guifg=#FCE94F ctermfg=221 gui=none
hi erubyExpression          guifg=#FFC912 ctermfg=220 gui=none
hi erubyDelimiter           guifg=#FFC912 ctermfg=220 gui=none
hi rubyRegexp               guifg=#FF2BC5 ctermfg=206 gui=none
hi rubyRegexpCharClass      guifg=#FF2BC5 ctermfg=206 gui=none
hi rubyRegexpDelimiter      guifg=#FF2BC5 ctermfg=206 gui=none
hi rubyRegexpQuantifier     guifg=#FF2BC5 ctermfg=206 gui=none
hi rubyInstanceVariable     guifg=#00c900 ctermfg=2   gui=none
hi rubyKeywordAsMethod      guifg=#FF2BC5 ctermfg=206 gui=none
hi rubyPseudoVariable       guifg=#FF2BC5 ctermfg=206 gui=none
hi rubyControl              guifg=#FFC912 ctermfg=220 gui=none
hi rubyBlock                guifg=#FFC912 ctermfg=220 gui=none
hi rubyBlockParamater       guifg=#FFFFFF ctermfg=15  gui=none
hi rubyBlockParamaterList   guifg=#FFFFFF ctermfg=15  gui=none

" NERD Tree
hi NERDTreeCWD              guifg=#96ff00 ctermfg=118 gui=none
hi NERDTreeDir              guifg=#FFC912 ctermfg=74  gui=none
hi NERDTreeDirSlash         guifg=#FFC912 ctermfg=74  gui=none

" HTML
hi htmlTag                  guifg=#00c900 ctermfg=2   gui=none
hi htmlTagN                 guifg=#00c900 ctermfg=2   gui=none
hi htmlSpecialTagName       guifg=#00c900 ctermfg=2   gui=none
hi htmlEndTag               guifg=#00c900 ctermfg=2   gui=none
hi htmlArg                  guifg=#009cff ctermfg=39  gui=none
hi htmlString               guifg=#96ff00 ctermfg=118 gui=none
hi htmlTagName              guifg=#00c900 ctermfg=2   gui=none
hi htmlLink                 guifg=#FFFFFF ctermfg=15  gui=none
hi htmlComment              guifg=#FFFFFF ctermfg=15  gui=none
hi htmlCommentPart          guifg=#BBBBBB ctermfg=250 gui=none
hi htmlCSSStyleComment      guifg=#BBBBBB ctermfg=250 gui=none

" CSS
hi cssTagName               guifg=#FFFFFF ctermfg=15  gui=none
hi cssAttributeSelector     guifg=#DDDDDD ctermfg=15  gui=none
hi cssSelectorOp            guifg=#DDDDDD ctermfg=15  gui=none
hi cssSelectorOp2           guifg=#DDDDDD ctermfg=15  gui=none
hi cssColorProp             guifg=#FFC912 ctermfg=220 gui=none
hi cssBoxProp               guifg=#FFC912 ctermfg=220 gui=none
hi cssTextAttr              guifg=#009cff ctermfg=220 gui=none
hi cssDefinition            guifg=#009cff ctermfg=135 gui=none
hi cssFunctionName          guifg=#009cff ctermfg=135 gui=none
hi cssURL                   guifg=#009cff ctermfg=135 gui=none
hi cssBoxAttr               guifg=#B04DFF ctermfg=135 gui=none
hi cssCommonAttr            guifg=#B04DFF ctermfg=135 gui=none
hi cssStringQQ              guifg=#00c900 ctermfg=135 gui=none
hi cssColor                 guifg=#00c900 ctermfg=135 gui=none
hi cssDefinition            guifg=#B04DFF ctermfg=135 gui=none
hi cssRenderProp            guifg=#009cff ctermfg=39  gui=none
hi cssTextProp              guifg=#FFC912 ctermfg=39  gui=none
hi cssTableProp             guifg=#FFC912 ctermfg=39  gui=none
hi cssFontProp              guifg=#FFC912 ctermfg=39  gui=none
hi cssFontAttr              guifg=#009cff ctermfg=39  gui=none
hi cssColorAttr             guifg=#009cff ctermfg=39  gui=none
hi cssGeneratedContentProp  guifg=#FFC912 ctermfg=39  gui=none

" PHP
hi phpParent                guifg=#FFFFFF ctermfg=15  gui=none
hi phpInclude               guifg=#FFC912 ctermfg=220 gui=none
hi phpIdentifier            guifg=#00c900 ctermfg=2   gui=none

" XML
hi xmlTag                   guifg=#B04DFF ctermfg=42  gui=none
hi xmlTagName               guifg=#B04DFF ctermfg=42  gui=none
hi xmlEndTag                guifg=#B04DFF ctermfg=42  gui=none
