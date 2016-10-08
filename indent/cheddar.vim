" Language:   Cheddar<http://cheddar.vihan.org/>
" Maintainer: Cheddar <http://github.com/cheddar-lang/>
" URL:        http://github.com/cheddar-lang/cheddar.vim
" License:    Apache-2.0

if exists("b:did_indent")
   finish
endif

let b:did_indent = 1

setlocal cindent

let b:undo_indent = "setl cin<"
