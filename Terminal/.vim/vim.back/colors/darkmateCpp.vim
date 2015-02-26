"
" Vim Personal Theme (darkmateCpp.vim)
"
" Author: Louis Clergue <louisclergue@gmail.com>
"
"Load the 'base' colorscheme
runtime colors/darkmate.vim

"Override the name of the base colorscheme with the name of this custom one
let g:colors_name = "darkmateCpp"

hi clear CursorLine
hi clear Comment
hi clear Structure
hi clear Character
hi clear Function
hi clear LineNr
hi clear Typedef
hi clear Constant

hi CursorLine       ctermbg=237
hi Comment          ctermfg=242
hi Structure        ctermfg=12
hi Character        ctermfg=120
hi Function         ctermfg=220
hi LineNr           ctermfg=248 ctermbg=237
hi Constant         ctermfg=196
hi Typedef          ctermfg=123

hi cppMathOperator  ctermfg=254
