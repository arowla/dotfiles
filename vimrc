set nocompatible
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
"Plugin 'Lokaltog/vim-easymotion'
Plugin 'alfredodeza/pytest.vim'
Plugin 'corntrace/bufexplorer'
"Plugin 'Lokaltog/vim-distinguished'
Plugin 'plasticboy/vim-markdown'
Plugin 'csexton/jekyll.vim'
Plugin 'groenewege/vim-less'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'skammer/vim-css-color'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'rubik/vim-radon'
Plugin 'junegunn/vim-easy-align'
" vim-scripts repos
"Plugin 'css_color.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'python.vim'
" Plugin 'ekalinin/Dockerfile.vim'
Plugin 'janko-m/vim-test'

" all plugins must be added before this line
call vundle#end()

syntax enable
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

" syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
set statusline=%f\ -\ FileType:\ %y

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint']

" vim-test
let test#strategy = "dispatch"

" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'

" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn
" " end syntastic settings
"
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

colorscheme elflord
" autocmd FileType python map ,8 :call Flake8()<CR>
" autocmd BufWritePost *.py call Flake8()
if &diff
    colorscheme peaksea
endif

map ,b :BufExplorer<CR>
map ,l :set list!<CR>
map ,v :e ~/.vimrc<CR>
nmap ,V :so ~/.vimrc<CR>
map ,p <Esc>:set paste!<CR>
map ,o o<Esc>
map ,O O<Esc>
map ,c <Esc>:set ignorecase!<CR>
map ,h <Esc>:set hls!<CR>
"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" For janko/vim-test
" these 'Ctrl mappings' work well when Caps Lock is mapped to Ctrl
nmap <silent> ,t<C-n> :TestNearest<CR>
nmap <silent> ,T<C-f> :TestFile<CR>
nmap <silent> ,Ta :TestSuite<CR>
nmap <silent> ,Tl<C-l> :TestLast<CR>
nmap <silent> ,tv<C-g> :TestVisit<CR>

nmap ,wt :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" Change selected text from NameLikeThis to name_like_this.
vnoremap ,u :s/\<\@!\([A-Z]\)/\_\l\1/g<CR>gul
" Change selected text from name_like_this to NameLikeThis.
vnoremap ,c :s/_\([a-z]\)/\u\1/g<CR>gUl
