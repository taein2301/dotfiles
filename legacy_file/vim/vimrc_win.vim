"======================================================================
" WINDOWS 설정
"======================================================================
colorscheme janah

" set 'selection', 'selectmode', 'mousemodel' and 'keymodel' for MS-Windows
behave mswin

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"set guifont=JetBrains\ Mono:h11
set guifont=D2Coding:h14

set shell=powershell

" 마우스 우클릭 붙여넣기
set mousemodel=extend
map <RightMouse> <MiddleMouse>

imap <C-S> <ESC>:w<CR>
map <C-S> :w<CR>

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
map <A-w> :q!<CR>


set grepprg=grep\ -snH

cd \%USERPROFILE\%\\Downloads
nnoremap <Leader>x :e \Dropbox\\ENV\\vim\\vimrc<CR><CR>

" 한글 깨지는것을 utf-8 로 다시 인코딩해서 읽기
" map <Leader>e :e ++enc=utf-8 <CR>
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.ex
set fileencodings=utf-8

"autocmd BufWritePre :set fileformat=unix
"autocmd BufWritePre :set fileencoding=utf-8
set fileformat=unix
set fileencoding=utf-8

if has("clipboard")
    " CTRL-X and SHIFT-Del are Cut
    vnoremap <C-X> "+x

    " CTRL-C and CTRL-Insert are Copy
    vnoremap <C-C> "+y

    " CTRL-V and SHIFT-Insert are Paste
    map <C-V>		"+gP
    cmap <C-V>		<C-R>+
endif

" Use CTRL-S for saving, also in Insert mode (<C-O> doesn't work well when
" using completions).
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<Esc>:update<CR>gi

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u

" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

"======================================================================
"" PlugIn Setting Start
"======================================================================
call plug#begin('~/vimfiles/plugged_win')
Plug 'scrooloose/nerdtree'              		" File 네비게이터
Plug 'blueyed/vim-diminactive'     				" 비활성화 창 어둡게
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'           " 소스 네비게이터
Plug 'airblade/vim-gitgutter'      " git 소스 수정 내용 화면 프린트
Plug 'vim-scripts/a.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

"======================================================================
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'bubblegum'
let g:airline_section_z = "%l/%L : %c"
let g:airline#extensions#tabline#enabled = 1               " buffer 목록 켜기
let g:airline#extensions#tabline#fnamemod = ':t'           " buffer 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1        " buffer number를 보여준다


"======================================================================
" Plug 'scrooloose/nerdtree'         " File 네비게이터
let NERDTreeWinPos = "left"
let NERDTreeIgnore=['\.exe$','\.WMV$','\.doc$','\.pptx$','\.ico$','\.PNG$','\.jpg$','\.pdf$','\.pyc$','\.pyo$', '\~$']
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


"======================================================================
" PlugIn Setting END
"======================================================================

"======================================================================
" End of File
"======================================================================
