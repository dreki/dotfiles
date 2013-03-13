execute pathogen#infect()
syntax on
filetype plugin indent on

" My config
let mapleader = "\\"
set expandtab
set tabstop=2
set shiftwidth=2
set number
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
set directory=/tmp
set guifont=Menlo:h12
set foldmethod=indent
let g:indexer_disableCtagsWarning=1
let Tlist_Auto_Highlight_Tag=1
let Tlist_Show_One_File=1
let Tlist_Sort_Type="name"

" Colorscheme stuff
" colorscheme github
" colorscheme molokai
colorscheme proton


" My mappings

map <leader>n :NERDTreeToggle<CR>
map <leader>rt :TlistToggle<CR>
map <leader>r :TlistToggle<CR>
map <leader>d :bn<CR>:bd#<CR>
map <D-F> :Ack!<space>
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>
map <leader>gd :Gdiff<CR>
map <leader>gb :Gblame<CR>
imap <C-Tab> <C-t>
map ` :BuffergatorToggle<CR>

" Window navigation
map <C-h> <C-w>h
map <C-l> <C-w>l

" Easy splitting by Opt+s.
map ß :sp<CR>

" Close windows with a double-Esc.
map <Esc><Esc> :q<CR>

" Open all buffers in vertical splits with Opt+vv.
map √√ :vert sba<CR>

" Close folds at different levels.
map 0ff :set foldlevel=0<CR>
map 1ff :set foldlevel=1<CR>
map 2ff :set foldlevel=2<CR>
map 3ff :set foldlevel=3<CR>
map 4ff :set foldlevel=4<CR>

" Open all folds.
map ff zR

" Don't automatically fold on file open.
set foldlevelstart=20

" Insert current date.
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%Y-%m-%d")<CR>


" Configure buffergator
let g:buffergator_viewport_split_policy = "T"
let g:buffergator_autoexpand_on_split = 0
let g:buffergator_split_size = 10

" vim-ruby-conque keybindings
nmap <silent> <D-r> :call RunRspecCurrentFileConque()<CR>
nmap <silent> <D-l> :call RunRspecCurrentLineConque()<CR>
nmap <silent> ,<D-r> :call RunLastConqueCommand()<CR>

