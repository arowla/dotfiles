set nocompatible
filetype off " required by Vundle!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" original repos on github
Plugin 'tpope/vim-surround'
"Plugin 'Lokaltog/vim-easymotion'
Plugin 'alfredodeza/pytest.vim'
Plugin 'corntrace/bufexplorer'
"Plugin 'Lokaltog/vim-distinguished'
Plugin 'plasticboy/vim-markdown'
Plugin 'csexton/jekyll.vim'
Plugin 'groenewege/vim-less'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'skammer/vim-css-color'
Plugin 'scrooloose/syntastic'
" vim-scripts repos
"Plugin 'css_color.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'python.vim'
Plugin 'ekalinin/Dockerfile.vim'

" all plugins must be added before this line
call vundle#end()

filetype plugin indent on " required!
syntax on
set ai
set autochdir
set backspace=2
set expandtab
set foldmethod=indent
set hidden
set history=50
set ignorecase
set incsearch
set laststatus=2
set noeb
set nofen
set nohls
set nowrap
set ruler
set smarttab
set sw=4
set ts=4
set virtualedit=block
set background=dark
set listchars=tab:>-,trail:·,extends:>

let python_space_errors = 1
let ruby_space_errors = 1
let g:vim_markdown_folding_disabled=1

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" end syntastic settings

colorscheme elflord
" autocmd FileType python map ,8 :call Flake8()<CR>
" autocmd BufWritePost *.py call Flake8()

map ,b :BufExplorer<CR>
map ,l :set list!<CR>
map ,v :e ~/.vimrc<CR>
nmap ,V :! source ~/.vimrc<CR>
map ,p <Esc>:set paste!<CR>
map ,o o<Esc>
map ,O O<Esc>
map ,c <Esc>:set ignorecase!<CR>
map ,h <Esc>:set hls!<CR>
nmap ,wt :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" Change selected text from NameLikeThis to name_like_this.
vnoremap ,u :s/\<\@!\([A-Z]\)/\_\l\1/g<CR>gul
" Change selected text from name_like_this to NameLikeThis.
vnoremap ,c :s/_\([a-z]\)/\u\1/g<CR>gUl

