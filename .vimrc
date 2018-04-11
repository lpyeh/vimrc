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
" ---EECS 398----
" Jellybeans colorscheme plugin (Section 1.2)
Plugin 'nanotech/jellybeans.vim'
Plugin 'easymotion/vim-easymotion'
" ---EECS 398---
" Nerdtree plugin (Section 1.1) to see layout of directory 
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" ---EECS 398---
" Plugin for latex compatibility in vim (Section 1.3)
" I use latex to write research papers, so having the ability 
" to do it in vim is nice!
Plugin 'vim-latex/vim-latex'
" ---EECS 398---"
"Plug in for R compatibility
"I'm an applied stats minor, so having 
"R compatibility with vim is awesome!!
Plugin 'jalvesaq/Nvim-R'

"398 Advanced HW 13"
Plugin 'w0rp/ale'


call vundle#end()
filetype plugin indent on

" Colorscheme set up with Plugin above
colorscheme jellybeans

" SETTING UP 
" Allow mouse clicks in vim
set mouse=a
set visualbell
set wildmenu
set number
set autoindent
" 398 Adv HW 13 Additions"
set noerrorbells
set novisualbell
set hlsearch

nnoremap <s-6> ^
nnoremap <leader>. :CtrlPTag<cr>

