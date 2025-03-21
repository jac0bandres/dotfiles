" Javascript Vim Syntax File by vi

if exists("b:current_syntax")
	finish
end

"Javascript case sensitive
syntax case match

"Keywords
syntax keyword jsStatement break case catch continue default do else
syntax keyword jsStatement finally for function if return switch throw
syntax keyword jsStatement try var while with
syntax keyword jsOperator delete in instanceof new typeof void
syntax keyword jsBoolean true false
syntax keyword jsNull null

" Constants
syntax keyword jsConstant undefined NaN Infinity

"Strings
syntax region jsStringD start=+"+ skip=+\\"+ end=+'+
syntax region jsStringS start=+'+ skip=+\\'+ end=+'+

" Numbers
syntax match jsNumber /\<-\=\d\+L\=\>\|\<0[xX]\x+\>/

" Comments
syntax match jsLineComment "//.*$"
syntax region jsComment start="/\*" end="\*/"

" Functions
syntax match jsFunction /\<function\>/
syntax match jsFuncCall /\w\+(\@=/

" Object properties and methods
syntax match jsObjectMethod /\.\w\+(\@=/

"ES6
syntax keyword jsES6 let const class extends import export async await

" Define the highlighting
highlight link jsStatement Keyword
highlight link jsOperator Operator
highlight link jsBoolean Boolean
highlight link jsNull Constant
highlight link jsStringD String
highlight link jsStringS String
highlight link jsNumber Number
highlight link jsLineComment Comment
highlight link jsComment Comment
highlight link jsFunction Function
highlight link jsFuncCall Type
highlight link jsConstant Constant
highlight link jsObjectMethod Function
highlight link jsES6 Statement

" Set the syntax type
let b:current_syntax = "javascript"
