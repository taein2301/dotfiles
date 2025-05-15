"======================================================================
" Plug in Setting
"=====================================================================
"======================================================================
"  ~/.vim/plugin
"======================================================================
" grep
let Grep_OpenQuickfixWindow = 1
let Grep_Default_Filelist = '*.c *.h *.cpp *.sc *.hpp *.cc *.cs'
autocmd FileType markdown let Grep_Default_Filelist = '*.md'
let Grep_Default_Options = '-rn'
let Grep_Skip_Dirs = '.svn'
let Grep_Skip_Files = 'tags'
let Grep_Skip_Files = '*.o'
"======================================================================

"======================================================================
"  VUNDLE 설정
set nocompatible
filetype off

"runtime! debian.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'   		 " For vim-markdown
Plugin 'plasticboy/vim-markdown'     " For vim-markdown
Plugin 'elzr/vim-json'               " For Json
Plugin '907th/vim-auto-save'         " 자동 저장
Plugin 'scrooloose/nerdcommenter'    " 주석
Plugin 'scrooloose/nerdtree'         " File 네비게이터
Plugin 'majutsushi/tagbar'           " 소스 네비게이터
Plugin 'a.vim'                       " c / cpp heder file 네비게이터
Plugin 'airblade/vim-gitgutter'      " git 소스 수정 내용 화면 프린트
Plugin 'itspriddle/vim-marked'       " Mac Marked2 앱 열기
Plugin 'parkr/vim-jekyll'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/DoxygenToolkit.vim' " Plugin 'vim-syntastic/syntastic'
Plugin 'blueyed/vim-diminactive'        " 비활성화 창 어둡게
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fisadev/FixedTaskList.vim'

if has("gui_macvim")
  " Plugin 'Valloric/YouCompleteMe'
elseif has("win32")
  " " gvim
elseif has("win32unix")
  " " Cygwin Setting
endif
call vundle#end()

filetype plugin indent on
"======================================================================

"======================================================================
" NerdTree 설정
let NERDTreeWinPos = "left"
let NERDTreeIgnore=['\.exe$','\.WMV$','\.doc$','\.pptx$','\.ico$','\.PNG$','\.jpg$','\.pdf$','\.pyc$','\.pyo$', '\~$']
let NERDTreeChDirMode = 2
let NERDTreeShowBookmarks=1

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

"======================================================================
" Tagbar
let g:tagbar_width = 30
let g:tagbar_autofocus = 1
"======================================================================

"======================================================================
" NerdCommenter
let g:NERDSpaceDelims = 1      " // int foo=2;
"======================================================================

"======================================================================
" 907th/vim-auto-save
autocmd FileType markdown let g:auto_save = 1
let g:auto_save_silent = 1
"======================================================================

"======================================================================
" plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['python=py','c++=cpp','c++=c', 'viml=vim', 'bash=sh', 'ini=dosini']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_conceal = 0
"======================================================================

"======================================================================
" vitalk/vim-simple-todo
" :help simple-todo
let g:simple_todo_map_keys = 0
let g:simple_todo_list_symbol = '*'
"======================================================================

"======================================================================
" parkr/vim-jekyll
let g:jekyll_post_dirs = ['_posts', '/jklee/Dropbox/BLOG/_posts']
let g:jekyll_post_extension = '.md'
let g:jekyll_post_template =  [
			\ '---',
			\ 'layout: post',
			\ 'title: "JEKYLL_TITLE"',
			\ 'date: "JEKYLL_DATE"',
			\ '---',
			\ '']
let g:jekyll_site_dir = '_site'

"======================================================================
" DoxygenToolkit
let g:DoxygenToolkit_authorName="Lee Jae Kuk ( jklee@ntels.com )"
let g:load_doxygen_syntax=1

"======================================================================
" YouCompleteMe
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]

let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1

let g:ycm_collect_identifiers_from_tags_files = 1 	" Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 				" Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 			" Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 					" Completion in comments
let g:ycm_complete_in_strings = 1 					" Completion in string

map <leader>o  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"======================================================================
" vim-diminactive
let g:diminactive_enable_focus = 1

"======================================================================
" ctrlpvim/ctrlp.vim Setting
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']    "Ignore in .gitignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'                                        "Ignore node_modules
let g:ctrlp_custom_ignore = {
  \ 'file': '\v\.(pyc|so|dll)$',
  \ }

"======================================================================
" mileszs/ack.vim
cnoreabbrev Ack Ack!
nnoremap <F7> :Ack!
nnoremap <F8> :Ack! <cword><CR>

"======================================================================
" vim-airline
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1               " buffer 목록 켜기
let g:airline#extensions#tabline#fnamemod = ':t'           " buffer 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1        " buffer number를 보여준다

"======================================================================
" fisadev/FixedTaskList.vim
map <F4> :TaskList<CR>

"======================================================================
" End of File
"======================================================================
