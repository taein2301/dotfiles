"====================================================================================================
" vimrc_windows.vim				              by JKLEE
"                                                             2025-03
"====================================================================================================
call plug#begin('C:\Program Files\Vim\vim91\plugged')

Plug 'tpope/vim-sensible'
Plug 'arzg/vim-colors-xcode'

call plug#end()

map <Leader>x :e $USERPROFILE\dotfiles\vim\vimrc_windows.vim<CR>

" 기본 GUI 옵션 설정
set guioptions-=T           " 툴바 제거
set guioptions-=m           " 메뉴바 제거 (필요 시 주석 처리)
set guioptions+=r           " 오른쪽 스크롤바 추가

"colorscheme xcode
colorscheme xcodelight
set guifont=JetBrains\ Mono:h12

