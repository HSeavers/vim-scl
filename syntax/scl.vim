" Vim syntax file
" Language: SCL
" Version: 0.1

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword sclBoolean true false
syn keyword sclConditional if else then case elsif
syn keyword sclConditional end_if end_case
syn keyword sclConstant nil maxint
syn keyword sclLabel goto
syn keyword sclOperator and div mod not or shl shr xor
syn keyword sclRepeat do for repeat while to until by of
syn keyword sclRepeat end_for end_repeat end_while
syn keyword sclStatement function_block function data_block const label var_in_out organization_block end_organization_block
syn keyword sclStatement end_data_block end_function_block end_const begin end_label end_function
syn keyword sclStruct struct
syn keyword sclStruct end_struct
syn keyword sclType array char
syn keyword sclType string

" Todos
syn keyword sclTodo contained TODO FIXME XXX DEBUG NOTE

" String
syn region  sclString matchgroup=sclString start=+'+ end=+'+ contains=sclStringEscape

" Operator
syn match SymbolOperator "[+\-/*=]"
syn match SymbolOperator "[<>]=\="
syn match SymbolOperator "<>"
syn match SymbolOperator ":="
syn match SymbolOperator "[()\[\]]"
syn match SymbolOperator "\.\."

" Numbers
syn match sclNumber '-\=\<\d\+\>'

"Floats
syn match sclFloat '-\=\<\d\+\.\d\+\>'
syn match sclFloat '-\=\<\d\+\.\d\+[eE]-\=\d\+\>'

"HexNum
syn match sclHexNumber '\(\(B\|W\|DW\)\+#\)\?16#[0-9a-fA-F]\+'

"Comment
syn region sclComment matchgroup=sclComment start="(\*" end="\*)" contains=sclTodo,sclSpaceError
syn region sclComment start="//" end="$" contains=sclTodo,sclSpaceError

"functions
syn keyword sclFunction Abs Arctan Cos Exp Ln Sin Sqr Sqrt
syn keyword sclFunction test_db
syn keyword sclFunction blkmov fill
syn keyword sclFunction byte_to_word byte_to_dword word_to_dword word_to_byte int_to_dint byte_to_bool
syn keyword sclFunction dword_to_dint dint_to_dword int_to_word word_to_int word_to_dint byte_to_int dword_to_int
syn keyword sclFunction dint_to_real real_to_dint DINT_TO_WORD real_to_int dint_to_time time_to_dint int_to_real
syn keyword sclFunction block_db_to_word word_to_block_db
syn keyword sclStatement var_Input var_Output VAR_TEMP end_var var

"Types
syn keyword sclType bool Byte Word Dword
syn keyword sclType int real dint
syn keyword sclType any

"Constant
syn keyword sclConstant TITLE NAME AUTHOR FAMILY VERSION

syn keyword sclStatement fail otherwise operator

" control flow functions
syn keyword sclFunction Continue Exit return

if version >= 508 || !exists("did_scl_syn_inits")
  if version < 508
    let did_scl_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink sclAcces sclStatement
  HiLink sclBoolean Boolean
  HiLink sclComment Comment
  HiLink sclComment1 Comment
  HiLink sclComment2 Comment
  HiLink sclComment3 Comment
  HiLink sclConditional Conditional
  HiLink sclConstant Constant
  HiLink sclDelimiter Identifier
  HiLink sclDirective sclStatement
  HiLink sclException Exception
  HiLink sclFloat float
  HiLink sclFunction Function
  HiLink sclLabel Label
  HiLink sclMatrixDelimiter Identifier
  HiLink sclModifier Type
  HiLink sclNumber Number
  HiLink sclHexNumber Number
  HiLink sclOperator Operator
  HiLink sclPredefined sclStatement
  HiLink sclPreProc PreProc
  HiLink sclRepeat Repeat
  HiLink sclSpaceError Error
  HiLink sclStatement Statement
  HiLink sclString String
  HiLink sclStringError Error
  HiLink sclStruct sclStatement
  HiLink SymbolOperator Operator
  HiLink sclTodo Todo
  HiLink sclType Type
  HiLink sclUnclassified sclStatement
  HiLink sclError Error
  HiLink sclAsmKey sclStatement
  HiLink sclShowTab Error
  HiLink sclKeyword Keyword
  delcommand HiLink
endif

let b:current_syntax = "scl"
