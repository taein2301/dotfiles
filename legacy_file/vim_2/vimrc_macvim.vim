"======================================================================
" Mac MacVim GUI Setting
"======================================================================
if has("gui_running")     " GUI MacVim
	let startPwd = substitute(system('pwd'), "\n", "", "")
	set guifont=Monaco:h15
	set guioptions=                    "Remove both scrollbars

	set lines=30
	set columns=100

	" TAB Move   <D : Command key
	nnoremap <D-1>   1gt<CR>
	nnoremap <D-2>   2gt<CR>
	nnoremap <D-3>   3gt<CR>
	nnoremap <D-4>   4gt<CR>
	nnoremap <D-5>   5gt<CR>
	nnoremap <D-6>   6gt<CR>
	nnoremap <D-7>   7gt<CR>
	nnoremap <D-8>   8gt<CR>
	nnoremap <D-9>   9gt<CR>

	autocmd GUIEnter * set visualbell t_vb= " 소리 안나도록

	cd ~\Downloads
else                      " Terminal Vim

endif

let Grep_Path = '/usr/bin/grep'
nnoremap <Leader>x :e ~/.vim/vimrc<CR><CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

"======================================================================
" vim terminal 으로 명령어 보내면서 terminal 실행
function! Termrun(prefix)
	highlight Terminal ctermbg=None ctermfg=None guibg=#262626 guifg=#dadada
    " find first buffer that is from :term
    let l:bufnum = bufnr("!/bin/bash")
	let l:cmd = a:prefix ."\<CR>"
    "let l:cmd = a:prefix . expand("%:p") . "\<CR>"
    if l:bufnum < 0
        let l:bufnum = term_start("/bin/bash", {"term_finish": "close","term_rows":10 })
    endif
    call term_sendkeys(l:bufnum,l:cmd)
endfunction


"======================================================================
" parkr/vim-jekyll
let g:jekyll_post_dirs = ['_posts', '/jklee/Dropbox/BLOG/_posts']

"======================================================================
" End of File
"======================================================================
