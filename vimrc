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
execute pathogen#infect()
syntax on
color jellybeans
filetype plugin indent on
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <C-\> :Gbrowse<CR>
inoremap <C-@> <c-x><c-o>
let g:gitgutter_realtime = 1
let mapleader = ","
highlight ColorColumn ctermbg=235 guibg=#2c2d27
hi Todo ctermfg=1
let &colorcolumn="80,".join(range(120,999),",")
let g:syntastic_javascript_syntax_checker="jshint"
set guifont=Monaco:h16
command! -complete=file -nargs=* Grunt call s:RunShellCommand('grunt '.<q-args>)
