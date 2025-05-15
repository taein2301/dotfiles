"======================================================================
" 파일별 개별 설정
"======================================================================

" 자동 주석 금지
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"======================================================================
" JSON Setting
"=====================================================================
autocmd FileType json map <leader>j :%!python -m json.tool<CR>


"======================================================================
" Markdown
"=====================================================================
autocmd FileType markdown nnoremap <F8> :MarkedOpen<CR>

"======================================================================
" Python
"=====================================================================
autocmd FileType python set sts=4
autocmd FileType python map <leader>r <Esc>:w<CR>:!clear;python3 %<CR>
autocmd BufNewFile *.py 0r ~/.vim/syntax/skeleton_python | let IndentStyle="python"
autocmd FileType python let python_highlight_all = 1
autocmd BufWritePre <buffer> :%s/\s\+$//e
"python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
  " project_base_dir = os.environ['VIRTUAL_ENV']
  " activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  " execfile(activate_this, dict(__file__=activate_this))
" EOF

"======================================================================
" sc/pc 파일 cpp 형식으로 읽기
"=====================================================================
autocmd BufNewFile,BufRead *.sc set filetype=cpp
autocmd BufNewFile,BufRead *.pc set filetype=cpp



