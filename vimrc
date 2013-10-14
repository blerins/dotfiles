set runtimepath+=~/.vim/plugins/vam
"call vam#ActivateAddons(["ack","ctrlp","Supertab","vim-powerline","Solarized","The_NERD_tree","Syntastic","vim-scala@behaghel"])
call vam#ActivateAddons(["ack","ctrlp","Supertab","vim-powerline","Solarized","The_NERD_tree","vim-scala","Indent_Guides", "delimitMate"])

set mouse=a

" Line numbers
set number

if has("autocmd")
  "filetype plugin indent on
  filetype indent on
endif

" Hidden chars
set list!
set list listchars=tab:»>,trail:·,extends:#

" Syntax highligting
syntax enable
set cursorline
set colorcolumn=100
set t_Co=256
set background=dark
let g:solarized_termcolors = 256
let g:solarized_contrast = "high"
colorscheme solarized

" Indenting
set smartindent
set expandtab
set nowrap
set sw=2 ts=2 sts=2
autocmd FileType python :setlocal sw=4 ts=4 sts=4

" Searching
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter

" Clear highlight
nnoremap <space> :noh<return><space>

" Close Quickfix
nnoremap <C-esc> :ccl<return>

" Search
nnoremap <C-f> :Ack!<space>

" Special copy paste bindings
vnoremap <C-c> "+ygv
vnoremap <C-x> "+x
vnoremap <C-v> c<space><esc>"+gPx
nnoremap <C-v> "+gP
inoremap <C-v> <esc>"+gPa

nnoremap <C-down> <C-w>j
nnoremap <C-up> <C-w>k
nnoremap <C-left> <C-w>h
nnoremap <C-right> <C-w>l

nnoremap <A-down> <C-w>J
nnoremap <A-up> <C-w>K
nnoremap <A-left> <C-w>H
nnoremap <A-right> <C-w>L

nnoremap <C-t> :CtrlPBuffer<return>

" C# comment colors
hi csXmlTag gui=italic guifg=#657b83

" ignoring files
set wildignore+=*.pyc

if has("gui_running")
  set guioptions=acei

  " Indent Guides
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_color_change_percent = 4
  let g:indent_guides_start_level= 3
  let g:indent_guides_guide_size = 1
endif

" The NERD tree
map <F2> :NERDTreeToggle<CR>
let NERDTreeMapOpenSplit = "s"
let NERDTreeMapOpenVSplit = "v"

" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|target$'
let g:ctrlp_switch_buffer = 'etH'

" Powerline hack
set laststatus=2
if has("gui_running")
  let g:Powerline_colorscheme = 'solarized'
endif

" DelimitMate
let delimitMate_expand_cr = 1

" Supertab
let g:SuperTabCrMapping = 0 " prevent remap from breaking supertab

" Syntastic
" Python stuff
let g:syntastic_python_checker_args='--ignore=E501'
