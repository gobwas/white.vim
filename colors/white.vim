" white.vim - minimalistic Vim colorscheme with some attention to Go syntax.
"
" This color scheme was greatly inspired by:
" https://github.com/clinstid/eink.vim
"
" For color reference see:
" https://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "white"

function! SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
function! SynStackFG()
	if !exists("*synstack")
		return
	endif
	echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "fg")
endfunc


if &background == "light"
  hi Normal       cterm=NONE          ctermbg=white   ctermfg=238
  hi SignColumn   cterm=NONE          ctermbg=white   ctermfg=238
  hi SpecialKey   cterm=NONE                          ctermfg=NONE
  hi IncSearch    cterm=NONE          ctermbg=81      ctermfg=255
  hi Search       cterm=NONE          ctermbg=0       ctermfg=255
  hi MoreMsg      cterm=NONE                          ctermfg=NONE
  hi ModeMsg      cterm=NONE                          ctermfg=NONE
  hi LineNr       cterm=NONE                          ctermfg=250
  hi StatusLine   cterm=NONE          ctermbg=254     ctermfg=232
  hi StatusLineNC cterm=NONE          ctermbg=255     ctermfg=232
  hi VertSplit    cterm=NONE          ctermbg=255     ctermfg=250
  hi Title        cterm=NONE                          ctermfg=NONE
  hi Visual       cterm=NONE                          ctermfg=NONE
  hi VisualNOS    cterm=NONE                          ctermfg=NONE
  hi WarningMsg   cterm=NONE                          ctermfg=NONE
  hi WildMenu     cterm=NONE                          ctermfg=NONE
  hi Folded       cterm=NONE                          ctermfg=NONE
  hi FoldColumn   cterm=NONE                          ctermfg=NONE
  hi DiffAdd      cterm=NONE                          ctermfg=NONE
  hi DiffChange   cterm=NONE                          ctermfg=NONE
  hi DiffDelete   cterm=NONE                          ctermfg=NONE
  hi DiffText     cterm=NONE                          ctermfg=NONE
  hi Type         cterm=NONE                          ctermfg=NONE
  hi Keyword      cterm=NONE                          ctermfg=NONE
  hi Number       cterm=NONE                          ctermfg=NONE
  hi Char         cterm=NONE                          ctermfg=NONE
  hi Format       cterm=NONE                          ctermfg=NONE
  hi Special      cterm=NONE                          ctermfg=NONE
  hi CursorLine   cterm=NONE          ctermbg=255     ctermfg=NONE
  hi Constant     cterm=NONE                          ctermfg=NONE
  hi PreProc      cterm=NONE                          ctermfg=NONE
  hi Directive    cterm=NONE                          ctermfg=NONE
  hi Conditional  cterm=NONE                          ctermfg=NONE
  hi Comment      cterm=NONE                          ctermfg=250
  hi Func         cterm=NONE                          ctermfg=NONE
  hi Identifier   cterm=NONE                          ctermfg=NONE
  hi Statement    cterm=NONE                          ctermfg=NONE
  hi Ignore       cterm=NONE                          ctermfg=NONE
  hi String       cterm=NONE                          ctermfg=24
  hi ErrorMsg     cterm=NONE          ctermbg=15      ctermfg=9
  hi Error        cterm=NONE          ctermbg=15      ctermfg=9

  "hi SpellBad     cterm=NONE          ctermbg=224     ctermfg=160
  hi SpellBad     cterm=underline          ctermbg=NONE     ctermfg=160

  hi Todo         cterm=NONE          ctermbg=NONE    ctermfg=81
  hi MatchParen   cterm=underline     ctermbg=255     ctermfg=0
  hi ColorColumn                                      ctermbg=255
  hi EndOfBuffer  cterm=NONE                          ctermfg=252
  
  hi TabLineSel   cterm=NONE ctermbg=white ctermfg=81
  hi TabLine	  cterm=underline ctermbg=251 ctermfg=234
  hi TabLineFill  cterm=NONE ctermbg=238 ctermfg=238

  " Vim {{{
  hi vimLineComment cterm=NONE ctermbg=NONE ctermfg=250
  " }}}
  
  " NERDTree {{{
  hi NERDTreeDir            cterm=NONE ctermbg=NONE ctermfg=25
  hi NERDTreeOpenable       cterm=NONE ctermbg=NONE ctermfg=NONE
  hi NERDTreeNodeDelimiters cterm=NONE ctermbg=NONE ctermfg=NONE
  " }}}
  
  " Mail {{{
  hi mailSignature cterm=NONE ctermbg=NONE ctermfg=22
  " }}}
  
  " 61 SlateBlue3
  " 68 SteelBlue3
  " 81 SteelBlue1
  " 39 DeepSkyBlue3
  " Go 61 & 68 {{{
  hi goPackage               cterm=NONE ctermbg=NONE ctermfg=244
  hi goImport                cterm=NONE ctermbg=NONE ctermfg=244
  hi goType                  cterm=NONE ctermbg=NONE ctermfg=244
  hi goDeclaration           cterm=NONE ctermbg=NONE ctermfg=244
  hi goDeclType              cterm=NONE ctermbg=NONE ctermfg=240
  hi goVar                   cterm=NONE ctermbg=NONE ctermfg=240
  hi goBuiltins              cterm=NONE ctermbg=NONE ctermfg=240
  hi goUnsignedInts          cterm=NONE ctermbg=NONE ctermfg=240
  hi goSignedInts            cterm=NONE ctermbg=NONE ctermfg=240
  hi goPredefinedIdentifiers cterm=NONE ctermbg=NONE ctermfg=240
  " }}}

  " Markdown {{{
  hi markdownH1                cterm=NONE      ctermbg=255 ctermfg=238
  hi markdownH1Delimiter       cterm=NONE      ctermbg=255 ctermfg=238
  hi markdownH2                cterm=NONE      ctermbg=255 ctermfg=238
  hi markdownH2Delimiter       cterm=NONE      ctermbg=255 ctermfg=238
  hi markdownH3                cterm=NONE      ctermbg=255 ctermfg=238
  hi markdownH3Delimiter       cterm=NONE      ctermbg=255 ctermfg=238

  hi markdownItalic            cterm=NONE      ctermbg=NONE ctermfg=61
  hi markdownBold              cterm=NONE      ctermbg=NONE ctermfg=61
  hi markdownCode              cterm=NONE      ctermbg=NONE ctermfg=244
  hi markdownId                cterm=NONE      ctermbg=NONE ctermfg=250
  hi markdownIdDelimiter       cterm=NONE      ctermbg=NONE ctermfg=250
  hi markdownLinkText          cterm=underline ctermbg=NONE ctermfg=61
  hi markdownLinkTextDelimiter cterm=NONE      ctermbg=NONE ctermfg=61
  hi markdownLink              cterm=NONE      ctermbg=NONE ctermfg=250
  hi markdownLinkDelimiter     cterm=NONE      ctermbg=NONE ctermfg=250
  hi markdownUrl               cterm=NONE      ctermbg=NONE ctermfg=250
  " }}}
 
  " ALE {{{
  hi ALEInfo              cterm=NONE ctermbg=NONE ctermfg=NONE
  hi ALEInfoLine          cterm=NONE ctermbg=NONE ctermfg=NONE
  hi ALEInfoSign          cterm=NONE ctermbg=NONE ctermfg=NONE

  hi ALEWarning           cterm=bold ctermbg=NONE ctermfg=97
  hi ALEWarningLine       cterm=NONE ctermbg=NONE ctermfg=NONE
  hi ALEWarningSign       cterm=NONE ctermbg=NONE ctermfg=97

  hi ALEError             cterm=bold ctermbg=NONE ctermfg=9
  hi ALEErrorLine         cterm=NONE ctermbg=NONE ctermfg=NONE
  hi ALEErrorSign         cterm=NONE ctermbg=NONE ctermfg=9
  " }}}
  

else
  hi Normal       cterm=NONE          ctermbg=233     ctermfg=250
  hi SignColumn   cterm=NONE          ctermbg=233     ctermfg=250
  hi SpecialKey   cterm=NONE                          ctermfg=NONE
  hi IncSearch    cterm=NONE                          ctermfg=NONE
  hi Search       cterm=NONE          ctermbg=255     ctermfg=0
  hi MoreMsg      cterm=NONE                          ctermfg=NONE
  hi ModeMsg      cterm=NONE                          ctermfg=NONE
  hi LineNr       cterm=NONE                          ctermfg=238
  hi StatusLine   cterm=NONE          ctermbg=235     ctermfg=253
  hi StatusLineNC cterm=NONE          ctermbg=234     ctermfg=253
  hi VertSplit    cterm=NONE          ctermbg=234     ctermfg=243
  hi Title        cterm=NONE                          ctermfg=NONE
  hi Visual       cterm=NONE                          ctermfg=NONE
  hi VisualNOS    cterm=NONE                          ctermfg=NONE
  hi WarningMsg   cterm=NONE                          ctermfg=NONE
  hi WildMenu     cterm=NONE                          ctermfg=NONE
  hi Folded       cterm=NONE                          ctermfg=NONE
  hi FoldColumn   cterm=NONE                          ctermfg=NONE
  hi DiffAdd      cterm=NONE                          ctermfg=NONE
  hi DiffChange   cterm=NONE                          ctermfg=NONE
  hi DiffDelete   cterm=NONE                          ctermfg=NONE
  hi DiffText     cterm=NONE                          ctermfg=NONE
  hi Type         cterm=NONE                          ctermfg=NONE
  hi Keyword      cterm=NONE                          ctermfg=NONE
  hi Number       cterm=NONE                          ctermfg=NONE
  hi Char         cterm=NONE                          ctermfg=NONE
  hi Format       cterm=NONE                          ctermfg=NONE
  hi Special      cterm=NONE                          ctermfg=NONE
  hi CursorLine   cterm=NONE          ctermbg=234     ctermfg=NONE
  hi Constant     cterm=NONE                          ctermfg=NONE
  hi PreProc      cterm=NONE                          ctermfg=NONE
  hi Directive    cterm=NONE                          ctermfg=NONE
  hi Conditional  cterm=NONE                          ctermfg=NONE
  hi Comment      cterm=NONE                          ctermfg=242
  hi Func         cterm=NONE                          ctermfg=NONE
  hi Identifier   cterm=NONE                          ctermfg=NONE
  hi Statement    cterm=NONE                          ctermfg=NONE
  hi Ignore       cterm=NONE                          ctermfg=NONE
  hi String       cterm=NONE                          ctermfg=72
  hi ErrorMsg     cterm=NONE          ctermbg=NONE    ctermfg=9
  hi Error        cterm=NONE          ctermbg=NONE    ctermfg=NONE
  "hi SpellBad     cterm=NONE          ctermbg=160     ctermfg=225
  hi SpellBad     cterm=underline          ctermbg=NONE     ctermfg=9
  hi ALEErrorSign cterm=NONE ctermbg=NONE ctermfg=9
  hi Todo         cterm=NONE          ctermbg=NONE    ctermfg=81
  hi MatchParen   cterm=underline     ctermbg=238     ctermfg=NONE
  hi ColorColumn                      ctermbg=255
  hi EndOfBuffer  cterm=NONE                          ctermfg=238

  hi TabLineSel   cterm=NONE      ctermbg=233 ctermfg=31
  hi TabLine	  cterm=underline ctermbg=234 ctermfg=251
  hi TabLineFill  cterm=NONE      ctermbg=235 ctermfg=0

  hi clear Error

  " Vim {{{
  hi vimLineComment cterm=NONE ctermbg=NONE ctermfg=242
  " }}}
  
  " NERDTree {{{
  hi NERDTreeDir            cterm=NONE ctermbg=NONE ctermfg=81
  hi NERDTreeOpenable       cterm=NONE ctermbg=NONE ctermfg=NONE
  hi NERDTreeNodeDelimiters cterm=NONE ctermbg=NONE ctermfg=NONE
  " }}}
  
  " Mail {{{
  hi mailSignature cterm=NONE ctermbg=NONE ctermfg=22
  " }}}
  
  " 61 SlateBlue3
  " 68 SteelBlue3
  " 81 SteelBlue1
  " 58 Orange4 / 94
  " 130 DarkOrange3
  " Go 61 & 68 {{{
  hi goPackage               cterm=NONE ctermbg=NONE ctermfg=246
  hi goImport                cterm=NONE ctermbg=NONE ctermfg=246
  hi goType                  cterm=NONE ctermbg=NONE ctermfg=246
  hi goDeclaration           cterm=NONE ctermbg=NONE ctermfg=246
  hi goDeclType              cterm=NONE ctermbg=NONE ctermfg=242
  hi goVar                   cterm=NONE ctermbg=NONE ctermfg=242
  hi goBuiltins              cterm=NONE ctermbg=NONE ctermfg=242
  hi goUnsignedInts          cterm=NONE ctermbg=NONE ctermfg=242
  hi goSignedInts            cterm=NONE ctermbg=NONE ctermfg=242
  hi goPredefinedIdentifiers cterm=NONE ctermbg=NONE ctermfg=242

  hi goDecimalInt            cterm=NONE ctermbg=NONE ctermfg=254
  hi goHexadecimalInt        cterm=NONE ctermbg=NONE ctermfg=254

  "hi SpellBad cterm=NONE ctermbg=1 ctermfg=1

  "hi shCommandSub cterm=NONE ctermbg=NONE ctermfg=NONE
endif
