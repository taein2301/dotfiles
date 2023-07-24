"====================================================================================================
" vimrc_max.vim				              by JKLEE
"                                                     2023-06
"====================================================================================================

"======================================================================
"" PlugIn Setting Start
"======================================================================
call plug#begin('~/.vim/plugged_mac')
Plug 'blueyed/vim-diminactive'     		" 비활성화 창 어둡게
Plug 'scrooloose/nerdtree'              " File 네비게이터
Plug 'majutsushi/tagbar'           		" 소스 네비게이터
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



"Plug 'airblade/vim-gitgutter'      		" git 소스 수정 내용 화면 프린트
"Plug 'mileszs/ack.vim'
"Plug 'vim-scripts/a.vim'
"Plug 'scrooloose/nerdcommenter'         " 주석
"Plug 'airblade/vim-rooter'
"Plug 'voldikss/vim-browser-search'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

"======================================================================
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'bubblegum'
let g:airline_section_z = "%l/%L : %c"
let g:airline#extensions#tabline#enabled = 1               " buffer 목록 켜기
let g:airline#extensions#tabline#fnamemod = ':t'           " buffer 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1        " buffer number를 보여준다

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = '|'


"======================================================================
" For MacVim ( GUI )
"======================================================================
if has("gui_macvim")
	set guifont=Monaco:h15
endif
