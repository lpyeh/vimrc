syntax on

if has ('cscope')
	set cscopetag cscopeverbose

	if has ('quickfix')
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

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
" Jellybeans colorscheme plugin (Section 1.2)
Plugin 'nanotech/jellybeans.vim'
Plugin 'easymotion/vim-easymotion'
" Nerdtree plugin (Section 1.1) to see directory 
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin for latex compatibility in vim (Section 1.3)
" I use latex to write research papers, so having the ability 
" to do it in vim is nice!
Plugin 'vim-latex/vim-latex'
"Plug in for R compatibility
Plugin 'jalvesaq/Nvim-R'

call vundle#end()
filetype plugin indent on

" Colorscheme set up with Plugin above
colorscheme jellybeans

" Allow mouse clicks in vim
set mouse=a

nnoremap <leader>. :CtrlPTag<cr>

