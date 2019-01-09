runtime macros/matchit.vim
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/gwincr11/.config/nvim/plugin/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/gwincr11/.config/nvim/plugin')
  call dein#begin('/Users/gwincr11/.config/nvim/plugin')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/gwincr11/.config/nvim/plugin/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Plugins
  call dein#add('tpope/vim-fugitive')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('scrooloose/nerdtree')
  call dein#add('mattn/emmet-vim')
  call dein#add('elixir-lang/vim-elixir')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('ngmy/vim-rubocop')
  call dein#add('jaromero/vim-monokai-refined')
  call dein#add('crusoexia/vim-dracula')
  call dein#add('tpope/vim-rails')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('tpope/vim-bundler')
  call dein#add('tpope/vim-rake')
  call dein#add('tpope/vim-fugitive')
  call dein#add('w0rp/ale')
  call dein#add('janko-m/vim-test')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
" NeoBundleCheck
"End NeoBundle Scripts-------------------------

" GENERAL
""

" enable syntax highlighting
syntax on
set t_Co=256
" colorscheme Monokai-Refined
colorscheme dracula
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

" disable swapfile
set noswapfile

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

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%{ALEGetStatusLine()}                     "Ale lint status
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

" Easier page navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
