"read local .vimrc file
if filereadable(expand('~/.vimrc.local'))
	source ~/.vimrc.local
endif

"neobundle
let g:neobundle_default_git_protocol='https'
if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'tpope/vim-commentary'

filetype plugin indent on

NeoBundleCheck

""""""""""""""""""""""""""""""""""""""""""""
"===========================================
"neocomplete
"===========================================
"Use neocomplete
let g:neocomplete#enable_at_startup = 1
"Use smartcase
let g:neocomplete#enable_smart_case = 1
"Set minimum syntax keyword length
let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '¥*ku¥*'
"Define dictionary
let g:neocomplete#sources#dictionary#dictionaries = {
	\ 'default' : '',
	\ 'vimshell' : $HOME.'/.vimshell_hist',
	\ 'scheme' : $HOME.'/.gosh_completions'
	\ }
"Define keyword
if !exists('g:neocomplete#keyword_patterns') 
	let g:neocomplete#keyword_patterns = {}
endif
"let g:neocomplete#keyword_patterns['default'] = '¥h¥w*'
"Plugin key-mappings
"inoremap <expr><C-g> neocomplete#undo_completion()
"inoremap <expr><C-l> neocomplete#complete_common_string()

autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif
" let g:neocomplete#force_omni_input_patterns.python = '¥%([^. ¥t]¥.¥|^¥s*@¥|^¥s*from¥s.¥+import ¥|^¥s*from ¥|^¥s*import ¥)¥w*'
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""
"===========================================
"vim-indent-guides
"===========================================
"enable vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""
"===========================================
"vim-indent-guides
"===========================================
nnoremap <silent> vp :VimShellPop<CR>
""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""
"===========================================
"quick-run
"===========================================
nnoremap <silent> qr :QuickRun<CR>
"nnoremap <silent> :qr :QuickRun
""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""
"===========================================
"previm
"===========================================
""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""
"===========================================
"open-browser
"===========================================
" カーソル下のURLをブラウザで開く
nmap <Leader>o <Plug>(openbrowser-open)
vmap <Leader>o <Plug>(openbrowser-open)
" ググる
nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>
""""""""""""""""""""""""""""""""""""""""""""


autocmd BufNewFile,BufRead *.md set filetype=markdown

"release autogroup in MyAutoCmd
augroup MyAutoCmd
  autocmd!
augroup END

"for search
set ignorecase
set smartcase
set incsearch
set hlsearch


"for edit
set showmatch
set matchpairs& matchpairs+=<:>
set backspace=start,eol,indent
set whichwrap=b,s,[,],<,>,~

"for display
set number
set cursorline
colorscheme koehler
set tabstop=3
set shiftwidth=3

"clipboard
set clipboard+=autoselect
set clipboard+=unnamed

"color
syntax on

"keybind
noremap ; :
"noremap : ;
noremap <ESC><ESC> :nohlsearch<CR><ESC>
"inoremap <C-d> <Delete>
"inoremap <C-h> <Backspace>
"inoremap <C-a> <Home>
"inoremap <C-e> <End>
"inoremap <C-n> <Down>
"inoremap <C-p> <Up>
"inoremap <C-f> <Right>
"inoremap <C-b> <Left>
inoremap <C-j> <ESC>
vnoremap <C-j> <ESC>

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>

set guifont=Ricty:h12

