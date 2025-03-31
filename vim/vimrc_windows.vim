"====================================================================================================
" vimrc_windows.vim				              by JKLEE
"                                                             2025-03
"====================================================================================================
call plug#begin('C:\Program Files\Vim\vim91\plugged')

Plug 'tpope/vim-sensible'
Plug 'arzg/vim-colors-xcode'
Plug 'bfrg/vim-cpp-modern'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'majutsushi/tagbar'

call plug#end()

map <Leader>x :e $USERPROFILE\dotfiles\vim\vimrc_windows.vim<CR>

" 기본 GUI 옵션 설정
set guioptions-=T           " 툴바 제거
set guioptions-=m           " 메뉴바 제거 (필요 시 주석 처리)
set guioptions+=r           " 오른쪽 스크롤바 추가
"set clipboard=unnamedplus  " 클립보드와 Vim 간 복사/붙여넣기 가능

set clipboard=unnamed
" mouse 설정

colorscheme xcode
"colorscheme xcodelight
set guifont=JetBrains\ Mono:h12

"=========================
" Plug 'scrooloose/nerdtree'
nnoremap <leader>n :NERDTreeToggle<CR>

"=========================
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
"
"=========================
" Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

