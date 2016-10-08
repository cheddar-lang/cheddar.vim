" Vim syntax file
" Language:   Cheddar<http://cheddar.vihan.org/>
" Maintainer: Cheddar <http://github.com/cheddar-lang/>
" URL:        http://github.com/cheddar-lang/cheddar.vim
" License:    Apache-2.0

if exists("b:current_syntax")
    finish
endif

" {{{ Whitespace
syntax region cheddarComment start=#\/\*# end=#\*\/#
syntax match cheddarComment /\/\/.*/
highlight default link cheddarComment Comment
" }}}

" {{{ Variables
syntax match cheddarVariable /[[:alpha:]_][[:alnum:]_]*/
highlight default link cheddarVariable Identifier
" }}}

" {{{ Keywords
syntax keyword cheddarPrimaryKeywords class func
highlight default link cheddarPrimaryKeywords Keyword

syntax keyword cheddarSecondaryKeywords var let const unary binary
highlight default link cheddarSecondaryKeywords Keyword

syntax keyword cheddarControlFlowKeywords if else for while
highlight default link cheddarControlFlowKeywords Keyword

syntax keyword cheddarIntermediateKeywords break continue static public private
highlight default link cheddarIntermediateKeywords Keyword

syntax keyword cheddarLiteralKeywords nil true false self super init
highlight default link cheddarLiteralKeywords Keyword
" }}}

" {{{ Literals

" Number
syntax match cheddarIntegerLiteral /\<\d\+\%(_\d\+\)*\%(\.\d\+\%(_\d\+\)*\)\=\>/
syntax match cheddarIntegerLiteral /\<0x\x\+\%(_\x\+\)*\>/
syntax match cheddarIntegerLiteral /\<0o\o\+\%(_\o\+\)*\>/
syntax match cheddarIntegerLiteral /\<0b[01]\+\%(_[01]\+\)*\>/
highlight default link cheddarIntegerLiteral Number

" String
syntax match cheddarStringFormat display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([aAbdiuoxXDOUfFeEgGcCsSpn]\|\[\^\=.[^]]*\]\)" contained
syntax match cheddarStringEscape display "\\\(x\x\+\|\o\{1,3}\|.\|$\)" contained
syntax region cheddarStringLiteral start=/"/ skip=/\\"/ end=/"/ contains=cheddarStringFormat,cheddarStringEscape
highlight default link cheddarStringLiteral String
highlight default link cheddarStringFormat SpecialChar
highlight default link cheddarStringEscape SpecialChar

" }}}

" {{{ Operators
syntax match cheddarSymbolOperator "\([*%+\-|&=<>:?]\+\|@\"\)"
highlight default link cheddarSymbolOperator Operator

syntax keyword cheddarWordOperator sqrt cbrt root sin cos tan acos cos tan acos asin atan log has floor ceil round abs repr sign print what is actually as
highlight default link cheddarWordOperator Operator
" }}}
