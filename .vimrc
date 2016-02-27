set splitright
set incsearch
set relativenumber
inoremap <c-s> <Esc>:w<CR>
nnoremap <c-s> <Esc>:w<CR>
inoremap <c-q> <Esc>:q<CR>
nnoremap <c-q> <Esc>:q<CR>
nnoremap <c-p> <Esc>:vsp<CR>
inoremap <c-n> <Esc>:tabe<CR>
nnoremap <c-n> <Esc>:tabe<CR>
inoremap <c-h> <Esc>gt<CR>
nnoremap <c-h> <Esc>gt<CR>
inoremap <c-f> <Esc>gT<CR>
nnoremap <c-f> <Esc>gT<CR>

set tabstop=4
set shiftwidth=4
filetype plugin indent on

nnoremap <F5> :call MatlabRun()<CR><CR>
nnoremap <S-F6> :call RunMatlab()<CR><CR>

function! MatlabRun()
	  execute "w"
	    execute "!matlab-ctrl.py \"". expand("%:r") . "\""
	endfunction

if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
	set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif
