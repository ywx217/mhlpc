autocmd FileType lpc setlocal dict+=./lpc

"cscope shortcut mapping
autocmd FileType lpc nnoremap <C-A>s :cs find s <C-R>=expand("<cword>")<CR><CR>
autocmd FileType lpc nnoremap <C-A>g :cs find g <C-R>=expand("<cword>")<CR><CR>
autocmd FileType lpc nnoremap <C-A>c :cs find c <C-R>=expand("<cword>")<CR><CR>
autocmd FileType lpc nnoremap <C-A>t :cs find t <C-R>=expand("<cword>")<CR><CR>
autocmd FileType lpc nnoremap <C-A>e :cs find e <C-R>=expand("<cword>")<CR><CR>
autocmd FileType lpc nnoremap <C-A>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
autocmd FileType lpc nnoremap <C-A>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
autocmd FileType lpc nnoremap <C-A>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"compile shortcut
autocmd FileType lpc nnoremap <F9> <ESC>:!lpc_compile %<CR>
autocmd FileType lpc nnoremap <F10> <ESC>:!lpc_update %<CR>

"input shortcuts
autocmd Filetype lpc inoremap <NL> <C-o>A;<CR>
autocmd Filetype lpc nnoremap <NL> A;<CR><Esc>
autocmd Filetype lpc inoremap <C-L> <C-o>A<CR>
autocmd Filetype lpc inoremap ,. ->
autocmd Filetype lpc nnoremap <Leader>tc mz:tabnew<CR>:b#<CR>'z

"folding
autocmd FileType lpc set omnifunc=ccomplete#Complete
autocmd FileType lpc set foldmethod=indent
autocmd FileType lpc set foldlevel=9

"taglist
autocmd Filetype lpc let Tlist_Show_One_File = 1        " ��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
autocmd Filetype lpc let Tlist_Use_Right_Window = 1     " �����б������Ļ���Ҳ�
autocmd Filetype lpc let Tlist_File_Fold_Auto_Close = 1 " �����༭���ļ��ķ����б��Զ��۵�����
autocmd Filetype lpc let Tlist_Exit_OnlyWindow = 1      " ���taglist���������һ�����ڣ����˳�vim
autocmd Filetype lpc set updatetime=1000
autocmd FileType lpc nnoremap <silent> <leader>tt :TlistToggle<CR>

"lpc shortcuts
autocmd Filetype lpc nnoremap <F9> <ESC>:!lpc_compile %<CR>
autocmd Filetype lpc nnoremap <F10> <ESC>:!lpc_update %<CR>

"folding
autocmd FileType lpc set omnifunc=ccomplete#Complete
autocmd FileType lpc set foldmethod=indent
autocmd FileType lpc set foldlevel=9

"complete shortcuts
autocmd Filetype lpc inoremap <NL> <C-o>A;<CR>
autocmd Filetype lpc nnoremap <NL> A;<CR><Esc>
autocmd Filetype lpc inoremap <C-L> <C-o>A<CR>
autocmd Filetype lpc inoremap ,. ->

"file encoding
autocmd FileType lpc set fileencodings=gbk,utf-8,cp936,gb2312,gb18030
autocmd FileType lpc set termencoding=gbk
autocmd FileType lpc set fileformat=unix
autocmd FileType lpc set encoding=utf-8


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

