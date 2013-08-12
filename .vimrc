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
" set guifont=Menlo:h12
set guifont=Consolas:h13
set foldmethod=indent
let g:indexer_disableCtagsWarning=1
let Tlist_Auto_Highlight_Tag=1
let Tlist_Show_One_File=1
let Tlist_Sort_Type="name"
let Tlist_Use_Right_Window=1
set ignorecase
set hidden
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Emulate Emacs' indenting
imap <tab> <esc>==A
"set noautoindent
"set cindent
"set cinoptions={1s,>2s,e-1s,^-1s,n-1s,:1s,p5,i4,(0,u0,W1s shiftwidth=2
"set cinkeys=0{,0},:,0#,!<Tab>,!^F
"set indentkeys=!<Tab>,o,O

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
map <leader><leader> :TlistToggle<CR>
map <D-/> <plug>NERDCommenterAlignLeft

" Window navigation
" map <C-h> <C-w>h
" map <C-l> <C-w>l

" minibufexpl navigation
map <C-h> :bprev<CR>
map <C-l> :bnext<CR>
map ˙ :bprev<CR>
map ¬ :bnext<CR>

" Easy splitting by Opt+s.
map ß :sp<CR>

" Close windows with a double-Esc.
" map <Esc><Esc> :q<CR>

" Close windows with a double-F1.
map <F1><F1> :q<CR>

" Open all buffers in vertical splits with Opt+vv.
map √√ :vert sba<CR>

" Open all buffers in tabs with Opt+bb.
map ∫∫ :tab sball<CR>

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

" Use :tjump for <C-]>, rather than just going to the first chosen result.
map <C-]> :tjump <C-R>=RubyCursorIdentifier()<CR><CR>


" Configure buffergator
let g:buffergator_viewport_split_policy = "T"
let g:buffergator_autoexpand_on_split = 0
let g:buffergator_split_size = 10

" Configure ConqueTerm
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_CWInsert = 1

" vim-ruby-conque keybindings
nmap <silent> <D-r> :call RunRspecCurrentFileConque()<CR>
nmap <silent> <D-l> :call RunRspecCurrentLineConque()<CR>
nmap <silent> ,<D-r> :call RunLastConqueCommand()<CR>

" Configure minibufexpl (the new one, from GitHub).
hi MBEVisibleActive guifg=#333333 guibg=#CCCCCC
hi MBEVisibleChangedActive guifg=#266DF1 guibg=#CCCCCC
hi MBEVisibleChanged guifg=#266DF1
hi MBEVisibleNormal guifg=#5DC2D6
hi MBEChanged guifg=#266DF1
hi MBENormal guifg=#808080

" Configure VimOutliner
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()
" let g:org_command_for_emacsclient = emacsclient
let g:agenda_files = ['~/Dropbox/A&D/ad.org', '~/Dropbox/A&D/journal.org', '~/Dropbox/A&D/ad.org_archive']

" Tabular configuration
if exists(":Tabularize")
  "map =a :Tabularize / [^ ]\+,\=$/l0<CR>
  "map =p :Tabularize /[^(]\+,\=$/l0<CR>
  "map =a :Tabularize /[^ ]\+,\=$/l0<CR>
  map =a :Tabularize /[^ ]\+$/<CR>
  map =p :Tabularize /[^ (]\+$/l0<CR>
endif
