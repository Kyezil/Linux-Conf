augroup unmap_paredit_bullshit
    au!

    " Quit fucking with my split-line mapping, paredit.
    au Filetype lisp nnoremap <buffer> S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w
augroup END
