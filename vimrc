set encoding=utf8
set bg=dark
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
" color jellybeans
color hybrid
filetype plugin indent on
let g:ctrlp_regexp = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
map <Leader>n :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden=1
map <Leader>b :NERDTreeFromBookmark
map cwd :cd %:p:h<CR>
map <C-\> :Gbrowse<CR>
inoremap <C-@> <c-x><c-o>
nnoremap <tab> <c-w>
nnoremap <tab><tab> <c-w><c-w>
let g:gitgutter_realtime = 1
let g:vim_markdown_folding_disabled=1
highlight ColorColumn ctermbg=235 guibg=#2c2d27
hi Todo ctermfg=1
let &colorcolumn="80,".join(range(120,999),",")
" let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
endif
let g:syntastic_html_tidy_ignore_errors = [
    \"trimming empty <i>",
    \"trimming empty <span>",
\]
let g:JSHintUpdateReadAndWriteOnly=1
map <Leader>j :let g:syntastic_javascript_checkers = ['jsxhint']<CR>
let delimitMate_expand_cr=2
map <Leader>w :set wrap!<CR>
map <Leader>W :set wrap linebreak nolist<CR>
let g:used_javascript_libs = 'underscore,backbone,jquery'
" Open markdown files with Chrome.
autocmd BufEnter *.md exe 'noremap <F5> :!open -a "Google Chrome.app" %:p<CR>'
nnoremap <c-b> :buffers<CR>:edit #
nmap <leader>s :%s/\s\+$//<CR>:let @/=''<CR>
set pastetoggle=<Leader>P
map <leader>p :r !pbpaste<CR>
" set mouse=a
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
fun! ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = s:old_mouse
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        echo "Mouse is for terminal"
    endif
endfunction
nnoremap <leader>m :call ToggleMouse()<CR>
nmap <leader>. :tabn<CR>
nmap <leader><leader> :tabp<CR>
let g:EditorConfig_core_mode = 'external_command'
nmap <leader>h :nohl<CR>
if has("syntax")
  syntax on
  filetype on
  au BufNewFile,BufRead *.js6 set filetype=javascript
  au BufNewFile,BufRead *.vue set filetype=vue
  au BufNewFile,BufRead *.less set filetype=css
endif
let g:rainbow_active = 1
let g:rainbow_conf={ 'ctermfgs' : [66,24,2,28,5,26,48,26,44,32,21,40,2,5,8,3] }
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '


call unite#filters#matcher_default#use(['matcher_fuzzy'])
let g:unite_source_rec_async_command =
    \ ['ag', '--follow', '--nocolor', '--nogroup',
    \  '--hidden', '-g', '']
nnoremap <Space>/ :Unite -start-insert file_rec/neovim<CR>
let g:jsx_ext_required = 0
highlight link xmlEndTag xmlTag
" EasyGrep options
let g:EasyGrepCommand=1
let g:EasyGrepRoot="repository"
let g:EasyGrepMode=2
let g:EasyGrepRecursive=1
let g:EasyGrepFilesToExclude="*.swp,*~,node_modules,platforms,plugins,bundle.js*"
