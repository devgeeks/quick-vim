execute pathogen#infect()
let mapleader = ","
set noswapfile
set nobackup
set nowrap
set scrolloff=5
" set term=builtin_ansi
" set term=builtin_iris-ansi
" set term=builtin_xterm
set number
set numberwidth=1
highlight LineNr ctermfg=grey
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set autoindent
" quiet pls
set visualbell t_vb=
inoremap jk <esc>
inoremap kj <esc>
syntax on
color jellybeans
filetype plugin indent on
map <C-n> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden=1
map <C-\> :Gbrowse<CR>
inoremap <C-@> <c-x><c-o>
nnoremap <tab> <c-w>
nnoremap <tab><tab> <c-w><c-w>
let g:gitgutter_realtime = 1
let g:vim_markdown_folding_disabled=1
highlight ColorColumn ctermbg=235 guibg=#2c2d27
hi Todo ctermfg=1
let &colorcolumn="80,".join(range(120,999),",")
let g:syntastic_javascript_syntax_checker="jshint"
let delimitMate_expand_cr=2
map <Leader>w :set wrap!<CR>
let g:used_javascript_libs = 'underscore,backbonei,jquery'
" Open markdown files with Chrome.
autocmd BufEnter *.md exe 'noremap <F5> :!open -a "Google Chrome.app" %:p<CR>'
