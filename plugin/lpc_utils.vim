function! LpcUtilsInit()
    setlocal dict+=./lpc
    "cscope shortcut mapping
    nnoremap <C-A>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-A>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-A>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-A>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-A>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-A>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-A>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
    nnoremap <C-A>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    "compile shortcut
    nnoremap <F9> <ESC>:!lpc_compile %<CR>
    nnoremap <F10> <ESC>:!lpc_update %<CR>

    "input shortcuts
    inoremap <NL> <C-o>A;<CR>
    nnoremap <NL> A;<CR><Esc>
    inoremap <C-L> <C-o>A<CR>
    inoremap ,. ->
    nnoremap <Leader>tc mz:tabnew<CR>:b#<CR>'z

    "folding
    set omnifunc=ccomplete#Complete
    set foldmethod=indent
    set foldlevel=9

    "taglist
    let Tlist_Show_One_File = 1        " ��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
    let Tlist_Use_Right_Window = 1     " �����б������Ļ���Ҳ�
    let Tlist_File_Fold_Auto_Close = 1 " �����༭���ļ��ķ����б��Զ��۵�����
    let Tlist_Exit_OnlyWindow = 1      " ���taglist���������һ�����ڣ����˳�vim
    set updatetime=1000
    nnoremap <silent> <leader>tt :TlistToggle<CR>

    "lpc shortcuts
    nnoremap <F9> <ESC>:!lpc_compile %<CR>
    nnoremap <F10> <ESC>:!lpc_update %<CR>

    "folding
    set omnifunc=ccomplete#Complete
    set foldmethod=indent
    set foldlevel=9

    "complete shortcuts
    inoremap <NL> <C-o>A;<CR>
    nnoremap <NL> A;<CR><Esc>
    inoremap <C-L> <C-o>A<CR>
    inoremap ,. ->

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " LookupFile plugin
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "imap <F1> <Plug>LookupFile
    "nmap <F1> <Plug>LookupFile
    "let g:LookupFile_MinPatLength = 2		"��������2���ַ��ſ�ʼ����
    "let g:LookupFile_PreserveLastPattern = 0	"�������ϴβ��ҵ��ַ���
    "let g:LookupFile_PreservePatternHistory = 1	"���������ʷ
    "let g:LookupFile_AlwaysAcceptFirst = 1		"�س��򿪵�һ��ƥ����Ŀ
    "let g:LookupFile_AllowNewFiles = 0		"�������������ڵ��ļ�
    "let g:LookupFile_SortMethod = ''		"�����㷨
    "if filereadable("looktags")			"����tag�ļ�������
    "	let g:LookupFile_TagExpr = '"looktags"'
    "endif
    "nmap <silent> <leader>ll :LUBufs<cr>
    "nmap <silent> <leader>lw :LUWalk<cr>

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " BufExplorer
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "let g:bufExplorerDefaultHelp=0   		
    "let g:bufExplorerShowRelativePath=1  	
    "let g:bufExplorerSortBy='mru'        

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " winManager 
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "let g:winManagerWindowLayout = 'TagList|FileExplorer,BufExplorer'	"���ô��ڲ���
    "let g:winManagerWidth = 30						"���ô��ڿ��
    "nmap <C-W><C-F> :FirstExplorerWindow<cr>
    "nmap <C-W><C-B> :BottomExplorerWindow<cr>
    "nmap wm :WMToggle<cr>
endfunction

function! LpcFileTypeDetect()
    let mypath = getcwd()
    let n = stridx(mypath, "newtxii")
    if n != -1
        set filetype=lpc
        call LpcUtilsInit()
    endif
endfunction

autocmd BufNewFile,BufRead *.inl,*.c,*.h call LpcFileTypeDetect()

autocmd BufNewFile,BufRead *.C setf cpp

