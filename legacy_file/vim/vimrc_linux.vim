"======================================================================
" vim_linux.vim  						          by JKLEE
"======================================================================

call plug#begin('~/.vim/plugged_linux')
Plug 'scrooloose/nerdcommenter'         " 주석
Plug 'blueyed/vim-diminactive'     		" 비활성화 창 어둡게
Plug 'scrooloose/nerdtree'              " File 네비게이터
Plug 'majutsushi/tagbar'           		" 소스 네비게이터
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/a.vim'
call plug#end()
"======================================================================
"" PlugIn Setting
"======================================================================

"======================================================================
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'bubblegum'
#let g:airline_section_z = "%l/%L : %c"
let g:airline#extensions#tabline#enabled = 1               " buffer 목록 켜기
let g:airline#extensions#tabline#fnamemod = ':t'           " buffer 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1        " buffer number를 보여준다

"======================================================================
" Plug 'blueyed/vim-diminactive'     " 비활성화 창 어둡게
let g:diminactive_enable_focus = 1

"======================================================================
" Plug 'scrooloose/nerdtree'         " File 네비게이터
let NERDTreeWinPos = "left"
let NERDTreeIgnore=['\.DS_Store','\.exe$','\.WMV$','\.doc$','\.pptx$','\.ico$','\.PNG$','\.jpg$','\.pdf$','\.pyc$','\.pyo$', '\~$']
let NERDTreeChDirMode = 2
let NERDTreeShowBookmarks=1
let NERDTreeAutoDeleteBuffer = 1

" NerdTree 창 만 남았을때 vim 닫기
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NERDTree in the directory of the current file (or /home if no file is open)
function! NERDTreeToggleInCurDir()
	" If NERDTree is open in the current buffer
	if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
		exe ":NERDTreeClose"
	else
		if (expand("%:t") != '')
			exe ":NERDTreeFind"
		else
			exe ":NERDTreeToggle"
		endif
	endif
endfunction

" vim 만 입력 했을때 자동으로 NerdTree 뜨게 하기
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"======================================================================
"

"======================================================================
" Plug 'majutsushi/tagbar'           " 소스 네비게이터
let g:tagbar_width = 30
let g:tagbar_autofocus = 1
"======================================================================

"======================================================================
" Plug 'scrooloose/nerdcommenter'    " 주석
let g:NERDSpaceDelims = 1      " // int foo=2;
