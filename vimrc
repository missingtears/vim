" vim config
" @author: missingtears
" @date: 2015-11-17

execute pathogen#infect()
filetype plugin indent on

let g:Powerline_symbols = 'fancy'
set laststatus=2
colorscheme molokai

syntax on                               " syntax highlight
set hlsearch                            " search highlighting
set incsearch                           " incremental search
set number 			                	" 显示行号
set numberwidth=5
set showmatch							" 显示对应括号
set nobackup                            " no *~ backup files
set noswapfile

set cursorline
set ruler
set history=1000

set viminfo=							" disable .viminfo file
set autoread                            " auto read when file is changed from outside
set hidden
set linespace=0
set nofoldenable

" 自动缩进
set autoindent
set cindent

set softtabstop=4
set shiftwidth=4
set tabstop=4

set showtabline=2

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" font
set guifont=Meslo\ LG\ L\ for\ Powerline:h12


" NERDTree
set guioptions-=L
" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F2> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
