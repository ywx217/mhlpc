function! LpcFileTypeDetect()
    let mypath = getcwd()
    let n = stridx(mypath, "newtxii")
    if n != -1
        setf lpc
    endif
endfunction

autocmd BufNewFile,BufRead *.inl,*.c,*.h call LpcFileTypeDetect()

autocmd BufNewFile,BufRead *.C setf cpp
