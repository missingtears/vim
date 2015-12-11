" vim config
" @author: missingtears
" @date: 2015-11-17

execute pathogen#infect()
filetype plugin indent on
filetype plugin on
let mapleader=","
let NERDSpaceDelims=1
let g:neocomplcache_enable_at_startup = 1

let g:Powerline_symbols = 'fancy'
set laststatus=2
syntax enable
" if has('gui_running')
"     set background=light
" else
" 	set background=dark
" endif
set background=dark
if has('gui_macvim')
	colorscheme solarized
	" colorscheme seti
else
	colorscheme seti
endif
let g:molokai_original = 1
let g:rehash256 = 1
" winpos 0 0								" 设定窗口位置
" set lines=1600 columns=2560				" 设定窗口大小
set scrolloff=3

set mouse=a
syntax on                               " syntax highlight
set t_Co=256
set hlsearch                            " search highlighting
set incsearch                           " incremental search
set number                              " 显示行号
set numberwidth=5
set showmatch                           " 显示对应括号
set nobackup                            " no *~ backup files
set noswapfile

set cursorline
" set cursorcolumn
set ruler
set history=1000

set viminfo=                            " disable .viminfo file
set autoread                            " auto read when file is changed from outside
set hidden
set linespace=0
set nofoldenable

" 自动缩进
set autoindent
set cindent
set smartindent

" set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set showtabline=2

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" font
set guifont=Meslo\ LG\ L\ for\ Powerline:h12

set guioptions-=b
set guioptions-=r
set cmdheight=1
" NERDTree
set guioptions-=L
" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F2> :NERDTreeToggle<CR>
" run ruby
map <F3> :RunRuby<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


let g:templates_no_autocmd = 0

" ctrl+c to toggle highlight.
let hlstate=0
nnoremap <c-l> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

