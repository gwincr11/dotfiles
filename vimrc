" Bundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
	set runtimepath+=/Users/corygwin/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/corygwin/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'elixir-lang/vim-elixir'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" GENERAL
""

" enable syntax highlighting
syntax on
colorscheme Monokai-Refined
" set backspace to work like most apps
set backspace=2

" Use system clipboard
set clipboard=unnamed

" enhance cli completion
set wildmenu

" turn on ruler
set ruler

" highlight current line
set cursorline

" turn on auto indentation
set autoindent

" allow use of mouse
set mouse=a

" disable backups
set nobackup

" add line numbers
set number

" always display status (useful for vim-airline)
set laststatus=2

" hide abandoned buffers
set hid

" show matching brackets
set showmatch
set mat=2

" highlight search results
set hlsearch

" trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" theme settings
set background=dark
set t_Co=256

""
" INDENTATION
""

" use tabs, indent two (not four)
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2

""
" FOLDING
""

" fold by indentation
set foldmethod=indent

" set deepest fold to 10 levels
set foldnestmax=10

" don't fold code by default
set nofoldenable

" set fold level to 1
set foldlevel=1

""
" White space
""
" Highlight trailing whitespace
match ErrorMsg '\s\+$'
" Delete whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
" Remove on save
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

""
" PLUGIN SETTINGS
""

" MULTIPLE SELECTION
" use ctrl+v to select next match (similar to Sublime's CMD+D)
let g:multi_cursor_next_key='<C-v>'

" EMMET
" expand items with tab
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Nerd Tree
" Open Automatically with vim
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

" Ctrl+n opens nerd tree
map <C-n> :NERDTreeToggle<CR>

" Ctags
map <Leader>rt :!ctags --tag-relative --extra=+f --Rf.git/tags --exclude=.git,pkg -languages=-javascript,sql<CR><CR>

set tags+=.git/tags
set tags +=tags;/


