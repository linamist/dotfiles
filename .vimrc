" Turn on hlsearch
set hlsearch
" Got bored with all the yellow? :nohlsearch

" Turn off vi compatibilty (probably needed for smartindent?)
set nocompatible

" Indentation
set shiftwidth=2
set tabstop=2
set smartindent
set autoindent
" load indent file for the current filetype
filetype indent on

" Line numbers
set number

" terminal colors
hi Comment ctermfg=118
hi Constant ctermfg=yellow "121
hi Define ctermfg=lightmagenta
"hi ErrorMsg ctermbg=DarkRed ctermfg=White
hi Function ctermfg=lightcyan
hi Identifier ctermfg=lightred
hi Include ctermfg=103
"hi IncSearch cterm=reverse
hi Keyword ctermfg=13
hi LineNr ctermfg=112
"hi ModeMsg cterm=bold
"hi Normal ctermfg=White
hi Number ctermfg=184 cterm=bold
"hi Operator ctermfg=Red
hi PreProc ctermfg=220
hi Special ctermfg=214
hi Statement ctermfg=123 cterm=bold
"hi StatusLine cterm=reverse,bold
"hi StatusLineNC cterm=reverse
hi Type ctermfg=lightyellow
"hi VertSplit cterm=reverse
"hi Visual ctermbg=grey 

"hi rubyConstant ctermfg=lightyellow
"hi rubyBoolean ctermfg=123
hi rubyPseudoVariable ctermfg=202
"hi rubyPredefinedConstant=yellow
