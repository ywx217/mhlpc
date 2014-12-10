au FileType lpc setlocal dict+=./lpc

" cscope shortcut mapping
au FileType lpc nnoremap <C-A>s :cs find s <C-R>=expand("<cword>")<CR><CR>
au FileType lpc nnoremap <C-A>g :cs find g <C-R>=expand("<cword>")<CR><CR>
au FileType lpc nnoremap <C-A>c :cs find c <C-R>=expand("<cword>")<CR><CR>
au FileType lpc nnoremap <C-A>t :cs find t <C-R>=expand("<cword>")<CR><CR>
au FileType lpc nnoremap <C-A>e :cs find e <C-R>=expand("<cword>")<CR><CR>
au FileType lpc nnoremap <C-A>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
au FileType lpc nnoremap <C-A>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
au FileType lpc nnoremap <C-A>d :cs find d <C-R>=expand("<cword>")<CR><CR>
