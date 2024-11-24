if exists('b:current_syntax') | finish|  endif

" TODO: add binary, hex and octal
syntax match don_float /\<\d\+\.\d\+\>/ contained
syntax match don_hex /\<[0\-9a\-fA\-F]\+\>/ contained
syntax match don_integer /\<\d\+\>/ contained contains=don_float,don_hex
syntax keyword don_bool true false
syntax match don_operator /[=\[\]\{\},\(\):]/
syntax match don_key /\<\w\+\>/ contains=don_integer
syntax region don_string1 start=/"/ end=/"/
syntax region don_string2 start=/'/ end=/'/
syntax match don_comment /!.*/

hi def link don_integer Number 
hi def link don_float Number
hi def link don_bool Boolean 
hi def link don_operator Operator 
hi def link don_key Identifier 
hi def link don_string1 String 
hi def link don_string2 String 
hi def link don_comment Comment

let b:current_syntax = 'don'

