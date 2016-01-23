" Vim syntax file
" Language: Oberon
" Maintainer: Thomas Denney
" Latest Revision: 22 January 2016

if exists("b:current_syntax")
    finish
endif

" Strings
syn region oberonString start=+"+ end=+"+

" Numbers
" Not yet supporting hexadecimals, scale factors, or reals
syn match oberonNumber "<\d+\>"

" Comments
syn keyword oberonTodo contained TODO
syn region oberonComment start="(\*" end="\*)" contains=oberonTodo

" Language keywords

syn keyword oberonLabel case

syn match oberonAssignment ":="

syn keyword pascalConstant NIL

syn keyword oberonConditional ELSE
syn keyword oberonConditional ELSIF
syn keyword oberonConditional IF
syn keyword oberonConditional THEN

syn keyword oberonRepeat DO
syn keyword oberonRepeat TO
syn keyword oberonRepeat WHILE
syn keyword oberonRepeat UNTIL
syn keyword oberonRepeat REPEAT
syn keyword oberonRepeat LOOP

syn keyword oberonComparator IS
syn keyword oberonComparator IN
syn match oberonComparator "<"
syn match oberonComparator ">"
syn match oberonComparator "="
syn match oberonComparator "#"

syn keyword oberonFunction PROCEDURE
syn keyword oberonFunction RECORD
syn keyword oberonFunction TYPE
syn keyword oberonFunction VAR
syn keyword oberonFunction CONST

syn match oberonOperator "&"
syn keyword oberonOperator OR
syn match oberonOperator "\~"
syn keyword oberonOperator MOD
syn keyword oberonOperator DIV
syn match oberonOperator "+"
syn match oberonOperator "-"
syn match oberonOperator "*"
syn match oberonOperator "/"

syn keyword oberonType BOOLEAN
syn keyword oberonType CHAR
syn keyword oberonType SHORTINT
syn keyword oberonType INTEGER
syn keyword oberonType LONGINT
syn keyword oberonType REAL
syn keyword oberonType LONGREAL
syn keyword oberonType SET
syn keyword oberonType ARRAY
syn keyword oberonType OF

syn keyword oberonStatement BEGIN
syn keyword oberonStatement END
syn keyword oberonStatement MODULE
syn keyword oberonStatement IMPORT
" syn keyword basicLanguageKeywords ARRAY BEGIN CASE CONST DIV DO ELSE ELSIF END EXIT
" syn keyword basicLanguageKeywords IF IMPORT IN IS LOOP MOD MODULE NIL OF OR POINTER
" syn keyword basicLanguageKeywords PROCEDURE RECORD REPEAT RETURN THEN TO TYPE
" syn keyword basicLanguageKeywords TYPE UNTIL VAR WHILE WITH

hi link oberonConditional   Conditional
hi link oberonComment       Comment
hi link oberonFunction      Function
hi link oberonLabel         Label
hi link oberonOperator      Operator
hi link oberonAssignment    Operator
hi link oberonRepeat        Repeat
hi link oberonString        String
hi link oberonTodo          Todo
hi link oberonType          Type
hi link oberonStatement     Statement

let b:current_syntax = "oberon"
