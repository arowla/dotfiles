set nocompatible
filetype off " required by Vundle!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Bundle 'VundleVim/Vundle.vim'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'alfredodeza/pytest.vim'
Bundle 'corntrace/bufexplorer'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'nvie/vim-flake8'
Bundle 'plasticboy/vim-markdown'
Bundle 'csexton/jekyll.vim'
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'skammer/vim-css-color'
" vim-scripts repos
Bundle 'css_color.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'python.vim'

" all plugins must be added before this line
call vundle#end()

filetype plugin indent on " required!
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

colorscheme elflord
autocmd FileType python map ,8 :call Flake8()<CR>
autocmd BufWritePost *.py call Flake8()

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

