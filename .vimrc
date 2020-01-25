""" Heading List
" Color Scheme Setting
" Character code Setting
" Screen display Setting
" Search function Setting
" Tab・Indent Setting
" Highlight Setting
" NeoBundle Setting

"----------------------------------------------------------
" Color Scheme Setting
"----------------------------------------------------------
syntax on
colorscheme molokai



"----------------------------------------------------------
" Character code Setting
"----------------------------------------------------------
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double
set clipboard+=unnamed
set cmdheight=2

"----------------------------------------------------------
" Screen display Setting
"----------------------------------------------------------
set number
set laststatus=2
set cmdheight=2
set cursorline
set cursorcolumn
set autoindent
set noexpandtab
set ruler
set list listchars=tab:\|\
set listchars=tab:･･,trail:･,eol:¬,extends:･,precedes:«,nbsp:%



"----------------------------------------------------------
" Search function Setting
"----------------------------------------------------------
set wrapscan
set ignorecase
set incsearch
set hlsearch
set noshowmode
set nowritebackup
set nobackup
set wildmenu
set history=1000



"----------------------------------------------------------
" Tab・Indent Setting
"----------------------------------------------------------
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab
set softtabstop=2
set backspace=indent,eol,start


"----------------------------------------------------------
" Highlight Setting
"----------------------------------------------------------
hi Normal ctermfg=253
hi String ctermfg=208
hi Identifier ctermfg=cyan
hi Function ctermfg=cyan
hi Conditional ctermfg=cyan
hi Repeat ctermfg=cyan
hi Statement ctermfg=41
hi Comment ctermfg=247
hi Keyword ctermfg=red
hi Boolean ctermfg=208
hi Number ctermfg=220
"Current CursorLine Color(Favorite Red=52 Orange=)
hi CursorLine cterm=bold  ctermbg=52 term=underline
hi LineNr ctermfg=253 ctermbg=25
hi CursorLineNr cterm=bold ctermfg=25 ctermbg=253
hi SpecialKey ctermfg=darkmagenta
hi NonText ctermfg=darkmagenta




"----------------------------------------------------------
" NeoBundle Setting
"----------------------------------------------------------
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))



"##########################################################
"###############  NeoBundle Plug-Ins - Start  #############
"##########################################################

" StatusLine //You need "set laststatus=2"
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'plasticboy/vim-markdown'

"##########################################################
"###############  NeoBundle Plug-Ins - End  ###############
"##########################################################


call neobundle#end()
filetype plugin indent on
NeoBundleCheck

"----------------------------------------------------------
" NeoBundle Setting End
"----------------------------------------------------------






"----------------------------------------------------------
"Key Binding Setting
"----------------------------------------------------------
nnoremap  <C-a> <ESC>^
nnoremap  <C-e> <ESC>$

inoremap  <C-a> <ESC>^
inoremap  <C-e> <ESC>$

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

noremap <C-j> <C-d>
noremap <C-k> <C-u>

nnoremap  <C-c><C-c> :<C-u>nohlsearch<cr><Esc>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"----------------------------------------------------------
"NERDTree"
"----------------------------------------------------------
let g:NERDTreeShowHidden=1
map <C-\> :NERDTreeToggle<CR>


"----------------------------------------------------------
"MarkDown e"
"----------------------------------------------------------
""" markdown {{{
  autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
  autocmd BufRead,BufNewFile *.md  set filetype=markdown
  " Need: kannokanno/previm
  nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー
  " 自動で折りたたまないようにする
  let g:vim_markdown_folding_disabled=1
" }}}
"
