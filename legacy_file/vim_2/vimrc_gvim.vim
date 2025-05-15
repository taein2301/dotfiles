"======================================================================
" Windows Gvim Setting
"======================================================================
"set encoding=utf-8
set guifont=Consolas:h12:cANSI
set guifontwide=Dotumche:h12:cDEFAULT

" 마우스 우클릭 붙여넣기
set mousemodel=extend
map <RightMouse> <MiddleMouse>

"let Grep_Path = '/bin/grep'
"let Grep_Path = ' C:\Program/ Files\Git\usr\bin\grep.exe'
cd C:\Users\jklee\Downloads
imap <C-S> <ESC>:w<CR>
map <C-S> :w<CR>
"		imap <C-O> <ESC>:tabnew<CR>:browse e<CR>
"		map <C-O> :tabnew<CR>:browse e<CR>

" For Full Screen
set lines=999 columns=999

" Bell Sound off 
set belloff=all

" ===== g_vim 메뉴 간소
set guioptions-=m            " 메인 메뉴
set guioptions-=T
set guioptions-=l
set guioptions-=L           " Lift-hand scroll bar
set guioptions-=r       	" right-hand scroll bar
set guioptions-=R
set guioptions-=b
set guioptions+=c

nnoremap <C-Z> u<CR>
inoremap <C-Z> <ESC>u<CR>
nnoremap <C-S-V> p<CR>
inoremap <C-S-V> <ESC>p<CR>$A

" 2017/02/24 JKLEE : gvim 은 Ctrl+q 가 Virtual Block 설정인데 Ctrl+v 로 바꿀라고 하다가
" Ctal+v 를 붙여넣기로 쓰고 Ctrl+q 를 새로 익히기로 결정
"	nnoremap <C-v> <C-Q>
"	inoremap <C-v> <C-Q>

"set grepprg=grep\ -nH
set grepprg=grep\ -snH
nnoremap <silent> <F5> :update<Bar>silent !start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "file://%:p"<CR>
nnoremap <Leader>x :e C:\Users\jklee\_vimrc<CR><CR>
map <silent> <Leader>P :!/Users/jklee/Dropbox/TOOL/blog_deploy_win.sh<CR><CR>

" 한글 깨지는것을 utf-8 로 다시 인코딩해서 읽기
" map <Leader>e :e ++enc=utf-8 <CR>
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.ex
set fileencodings=utf-8

"======================================================================
" vim terminal 으로 명령어 보내면서 terminal 실행 
function! Termrun(prefix)
    " find first buffer that is from :term
    let l:bufnum = bufnr("!cmd)
    let l:cmd = a:prefix . expand("%:p") . "\<CR>"
    if l:bufnum < 0
        let l:bufnum = term_start("cmd, {"term_finish": "close","term_rows":10 })
    endif
    call term_sendkeys(l:bufnum,l:cmd)
endfunction

"======================================================================
" End of File
"======================================================================
