set nocompatible
call plug#begin('~/.vim/plugged')

" My Bundles here:
"
" original repos on github
Plug 'tpope/vim-surround'
"Plug 'Lokaltog/vim-easymotion'
Plug 'alfredodeza/pytest.vim'
Plug 'corntrace/bufexplorer'
"Plug 'Lokaltog/vim-distinguished'
Plug 'plasticboy/vim-markdown'
Plug 'csexton/jekyll.vim'
Plug 'groenewege/vim-less'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'skammer/vim-css-color'
Plug 'scrooloose/syntastic'
" vim-scripts repos
"Plug 'css_color.vim'
Plug 'L9'
Plug 'FuzzyFinder'
Plug 'python.vim'
Plug 'ekalinin/Dockerfile.vim'

" all plugins must be added before this line
call plug#end()

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
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
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

