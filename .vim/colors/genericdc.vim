set background=dark
highlight clear

if exists("syntax on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "genericdc"

hi Normal       ctermfg=253 ctermbg=234
hi Special      ctermfg=253 ctermbg=NONE
hi Comment      ctermfg=239 ctermbg=NONE cterm=NONE
hi Constant     ctermfg=249 ctermbg=NONE
hi String       ctermfg=110 ctermbg=NONE
hi Number       ctermfg=167 ctermbg=NONE
hi htmlTagName  ctermfg=249 ctermbg=NONE
hi Identifier   ctermfg=245 ctermbg=NONE cterm=NONE
hi Statement    ctermfg=243 ctermbg=NONE cterm=NONE
hi Boolean      ctermfg=243 ctermbg=NONE cterm=NONE
hi PreProc      ctermfg=254 ctermbg=NONE
hi Type         ctermfg=249 ctermbg=NONE
hi Function     ctermfg=243 ctermbg=NONE cterm=NONE
hi Repeat       ctermfg=244 ctermbg=NONE
hi Operator     ctermfg=249 ctermbg=NONE
hi Error        ctermfg=9   ctermbg=NONE
hi TODO         ctermfg=202 ctermbg=NONE cterm=NONE
hi linenr       ctermfg=250 ctermbg=234
hi CursorLineNR ctermfg=250 ctermbg=234
hi SignColumn   guibg=NONE ctermbg=234
hi UnwantedTrailerTrash guibg=NONE ctermbg=255
hi Search        ctermfg=202 ctermbg=NONE

hi Visual          ctermfg=251 ctermbg=237 cterm=italic
hi SpecialKey      ctermfg=236 ctermbg=NONE
hi NonText         ctermfg=236 ctermbg=NONE
hi MatchParen      ctermfg=253 ctermbg=242
hi Pmenu           ctermfg=251 ctermbg=237
hi PmenuSel        ctermfg=235 ctermbg=111

hi ColorColumn ctermbg=236

hi link character       constant
hi link number          constant
hi link boolean         constant
hi link Float           Number
hi link Conditional     Repeat
hi link Label           Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link htmlTag         Special
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special

" sytnax specific

" javascript (ala vim-javascript-syntax)
hi javaScriptFuncArg ctermfg=244 ctermbg=NONE
hi javaScriptFuncExp ctermfg=244
hi javaScriptBraces                           cterm=NONE

hi link javaScriptDocTags Comment


" go (ala vim-go)
hi gotypes     ctermfg=221 ctermbg=NONE cterm=italic
hi goDirective ctermfg=242 ctermbg=NONE cterm=italic

hi link goTodo         TODO
hi link goType         gotypes
hi link goSignedInts   gotypes
hi link goUnsignedInts gotypes
hi link goFloats       gotypes
hi link goComplexes    gotypes

hi goOperator    ctermfg=242
hi goBuiltins    ctermfg=39
hi goDeclaration ctermfg=242
hi goDeclType    ctermfg=242

hi goFunction  ctermfg=243 ctermbg=NONE cterm=italic
hi goMethod    ctermfg=243 ctermbg=NONE cterm=NONE
hi goStruct    ctermfg=251 ctermbg=NONE cterm=NONE
hi goStructDef ctermfg=251 ctermbg=NONE cterm=italic


" NerdTree
hi link NERDTreeDir Special
hi NERDTreeFile     ctermfg=246
