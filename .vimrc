"----------------------------------------------------------
" Color Scheme Setting
"----------------------------------------------------------
syntax on
colorscheme molokai



"----------------------------------------------------------
" Character code Setting
"----------------------------------------------------------
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double



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
set smartcase
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
hi CursorLine cterm=bold  ctermbg=239  term=underline
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
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))


" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
"----------------------------------------------------------
"NeoBundle Plug-Ins - Start
"----------------------------------------------------------

" StatusLine //You need "set laststatus=2"
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'scrooloose/nerdtree'
"----------------------------------------------------------
"NeoBundle Plug-Ins - End
"----------------------------------------------------------
call neobundle#end()

filetype plugin indent on

NeoBundleCheck


"----------------------------------------------------------
"neosnippet
"----------------------------------------------------------
"Self made Snippet Directory
let g:neosnippet#snippets_directory='/Users/bellsmarket/.vim/snippets'


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap  <expr><TAB>
    \ pumvisible() ? "\<C-n>" :
    \ neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let g:neosnippet#snippets_directory='/Users/bellsmarket/.vim/bundle/neosnippet-snippets/neosnippets,~/.vim/snippets'
"----------------------------------------------------------
"neocomplete
"----------------------------------------------------------
let g:neocomplcache_enable_at_startup = 1

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "<CR>"

"----------------------------------------------------------
"Key Binding Setting
"----------------------------------------------------------
nnoremap  <C-a> <ESC>^
nnoremap  <C-e> <ESC>$
inoremap  <C-a> <ESC>^
inoremap  <C-e> <ESC>$


inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>



autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"----------------------------------------------------------
"NERDTree"
"----------------------------------------------------------
let g:NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
