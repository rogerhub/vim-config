" Vim syntax file
" Language:		CPPCMS tmpl
"
" I have no idea what I'm doing..

if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'tmpl'
endif

syn cluster cppTop contains=tmplDirective,tmplControlWord
syn cluster cppRegions contains=cppBlock,cppExpression

exe "runtime! syntax/html.vim"
unlet! b:current_syntax

syn region  cppBlock matchgroup=cppDelimiter start="<%%\@!-\=" end="[=-]\=%\@<!%>" contains=@cppTop  containedin=ALLBUT,@cppRegions keepend
syn region cppExpression matchgroup=cppDelimiter start="<%[=]" end="[=-]\=%\@<!%>" contains=@cppTop  containedin=ALLBUT,@cppRegions keepend

syn keyword tmplDirective contained skin view template uses
syn keyword tmplDirective contained if elif not empty rtl else
syn keyword tmplDirective contained foreach as rowid from reverse in
syn keyword tmplDirective contained empty item seperator
syn keyword tmplDirective contained cache for on miss no triggers recording
hi link tmplDirective Define

syn keyword tmplControlWord contained end
hi link tmplControlWord Special

hi def link cppDelimiter PreProc

let b:current_syntax = 'tmpl'
