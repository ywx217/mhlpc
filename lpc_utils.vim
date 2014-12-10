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
autocmd Filetype lpc let Tlist_Show_One_File = 1        " 不同时显示多个文件的tag，只显示当前文件的
autocmd Filetype lpc let Tlist_Use_Right_Window = 1     " 方法列表放在屏幕的右侧
autocmd Filetype lpc let Tlist_File_Fold_Auto_Close = 1 " 不被编辑的文件的方法列表自动折叠起来
autocmd Filetype lpc let Tlist_Exit_OnlyWindow = 1      " 如果taglist窗口是最后一个窗口，则退出vim
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
"let g:LookupFile_MinPatLength = 2		"最少输入2个字符才开始查找
"let g:LookupFile_PreserveLastPattern = 0	"不保存上次查找的字符串
"let g:LookupFile_PreservePatternHistory = 1	"保存查找历史
"let g:LookupFile_AlwaysAcceptFirst = 1		"回车打开第一个匹配项目
"let g:LookupFile_AllowNewFiles = 0		"不允许创建不存在的文件
"let g:LookupFile_SortMethod = ''		"排序算法
"if filereadable("looktags")			"设置tag文件的名字
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
"let g:winManagerWindowLayout = 'TagList|FileExplorer,BufExplorer'	"设置窗口布局
"let g:winManagerWidth = 30						"设置窗口宽度
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
"nmap wm :WMToggle<cr>

