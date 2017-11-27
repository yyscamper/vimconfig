
" Author: Felix Yuan
" Email: yyscamper@163.com
" Last Modified Date: Jul 5, 2015
" Source: https://github.com/yyscamper/vimconfig
"
" Reference:
" (1) http://amix.dk/vim/vimrc.html
" (2) https://github.com/amix/vimrc
" (3) https://github.com/wklken/k-vim

" Vundle Setting & Plugins {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set shell=/bin/bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Color scheme
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'

Plugin 'altercation/vim-colors-solarized'
" Plugin 'crusoexia/vim-monokai'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

" General plugins
"Plugin 'Lokaltog/powerline'
"Plugin 'ashwin/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'bufexplorer.zip'
Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'kshenoy/vim-signature'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'terryma/vim-expand-region'
Plugin 'easymotion/vim-easymotion'
Plugin 'matze/vim-move'
Plugin 'wincent/command-t'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'jasoncodes/ctrlp-modified.vim'
Plugin 'mhinz/vim-grepper'
Plugin 'wellle/targets.vim'
Plugin 'michaeljsmith/vim-indent-object'
" Plugin 'xolox/vim-session'
Plugin 'yssl/QFEnter'
Plugin 'tpope/vim-unimpaired'
Plugin 'justinmk/vim-sneak'
Plugin 'svermeulen/vim-easyclip'

Plugin 'tpope/vim-repeat'
Plugin 'Shougo/neocomplete.vim'
"Plugin 'Shougo/neosnippet.vim'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'Shougo/vimshell.vim'
"Plugin 'Shougo/vimproc.vim'
Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

" Common plugins for source codes
Plugin 'w0rp/ale'
" Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tComment'
"Plugin 'Yggdroot/indentLine'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'junegunn/vim-easy-align'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'thinca/vim-quickrun'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'

" Javascript/Node.js
Plugin 'moll/vim-node'
"Plugin 'walm/jshint.vim'
" Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'jiangmiao/simple-javascript-indenter'
Plugin 'ramitos/jsctags'

" Python
Plugin 'klen/python-mode'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'jmcantrell/vim-virtualenv'

" JSON
Plugin 'elzr/vim-json'

" golang
Plugin 'fatih/vim-go'

" Misc
" Plugin 'vim-scripts/Nibble'
" Plugin 'vim-scripts/genutils'
Plugin 'powerman/vim-plugin-AnsiEsc'
Plugin 'cespare/vim-toml'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" during insert mode, remap the ESC to avoid long finger keystroke
" `^ is to let the cursor doesn't when back to normal mode
inoremap jk <Esc>`^
" imap <Esc> <Esc>`^
" unmap Esc so that force me to use the jk
inoremap <Esc> <Nop>

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
map <C-s> <Esc>:w!<cr>

" Quickly close the current window
nnoremap <leader>q :q<CR>

" Map F12 to toggle Paste mode
set pastetoggle=<F12>

" Disbale paste mode when leaving insert mode
au InsertLeave * set nopaste

" Map ; to : to quickly enter command line, this will save a million keystrokes
nnoremap ; :

" Map space to page down
nnoremap <space> <C-D>
:map <A-Space> <PageUp>

" let textwidth=80
" let colorcolumn=+1
" let &colorcolumn=join(range(101,999),",")
" let &colorcolumn="100,".join(range(120,999),",")
highlight ColorColumn ctermbg=grey guibg=#2c2d27
autocmd BufEnter *.py,*.js,*.json,*.sh,*.c,*.h,*.java,.vimrc,vimrc,_vimrc
            \ exec ":call AutoSetFileLineLimit()"


" create a new line in the end of file and jump to it
nnoremap 'e <ESC>G$a<CR>

" move to last cursor position
nnoremap '' <C-O>
nnoremap 'b <C-O>

" move to previous cursor position
nnoremap 'f <C-I>

" start to replace the current word
nnoremap <leader>s :%s/<C-r><C-w>/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class,*.svn,*.git

" Make vim do normal (bash like) tab completion
set wildmode=longest:list,full

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Search instantly, makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
"set whichwrap+=<,>,h,l

" Set how many lines will be kept visible when move cursor up and down
set scrolloff=7

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
" Insert tabs on the start of a line according to shiftwidth
" Press backspace once will remove 4 spaces
set smarttab

" 1 tab == 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Auto indent, same with set autoindent
set ai "Auto indent

" Smart indent, same with set smartindent
set si "Smart indent

" Don't wrap lines
set nowrap

set number          " show line numbers
" set relativenumber  " show relative numbers

" highlight current line
set cursorline
" set cursorcolumn

" set foldenable

nnoremap B ^
nnoremap E $
" jump to the middle of line
" nnoremap m call cursor(0, len(getline('.'))/2)

nnoremap gV `[v`]   " highlight last inserted text

"Open vim configuration file
nnoremap <leader>vo :vsp ~/.vimrc<CR>

"source vim configuration file
nnoremap <leader>vs :source ~/.vimrc<CR>

" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv

" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
noremap Y y$

" Make Ctrl-e jump to the end of the current line in the insert mode. This is
" handy when you are in the middle of a line and would like to go to its end
" without switching to the normal mode.
inoremap <C-e> <C-o>$
inoremap <C-b> <C-o>^

" Allows you to easily replace the current word and all its occurrences.
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/
vnoremap <Leader>rc y:%s/<C-r>"/

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>:cw<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Try following encoding in following defined order in auto mode
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8

" Set new file's encoding
set encoding=utf-8
" set termencoding=
" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup file to another location, currently disable this
"set backup
"set backext=.bak
"set backupdir=/tmp/vimbackup/

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Create undo file
if has('persistent_undo')
  set undolevels=1000         " How many undos
  set undoreload=10000        " number of lines to save for undo
  set undofile                " So is persistent undo ...
  set undodir=/tmp/vimundo/
endif

" Automatically reload the vim configure file if has modification
"autocmd! bufwritepost _vimrc source % " windows
autocmd! bufwritepost .vimrc source % " linux

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
" Enable syntax highlighting
syntax enable

set background=dark

" Configure for solarized
let g:solarized_termtrans=0
let g:solarized_degrade=0
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

set t_Co=256

colorscheme solarized

set guifont=Monaco\ for\ Powerline:h14

"highlight Normal ctermfg=grey ctermbg=base03

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful mappings for managing tabs
map <leader>tt :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tq :tabclose<cr>
map <leader>tm :tabmove
map <leader>tp :tabp<cr>
map <leader>tn :tabn<cr>

" Quickly switch to the specified tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Quickly open a buffer for scripbble
map <leader>bb :e ~/buffer<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" useful mappings for managing windows
map <leader>wh :wincmd h<cr>
map <leader>wj :wincmd j<cr>
map <leader>wk :wincmd k<cr>
map <leader>wl :wincmd l<cr>
map <leader>wq :wincmd q<cr>
map <leader>ww :wincmd w<cr>
" nnoremap ww :wincmd w<cr>

command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>wz :ZoomToggle<CR>

" Puts new vsplit windows to the right of the current
set splitright
" Puts new split windows to the bottom of the current
set splitbelow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h%{fugitive#statusline()}\ \ \ Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Select whole line
map Y y$

" Select block
nnoremap <leader>v V`}

" Press w!! to sudo & write a file
cmap w!! w !sudo tee % > /dev/null

" Press U for easier redo
nnoremap U <C-r>

" Remove highlight
noremap <silent>'/ :nohls<CR>

"Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * #zz
nnoremap <silent> # *zz
nnoremap <silent> g* g*zz

" Move a line of text
nmap <leader>lj mz:m+<cr>`z
nmap <leader>lk mz:m-2<cr>`z
vmap <leader>lj :m'>+<cr>`<my`>mzgv`yo`z
vmap <leader>lk :m'<-2<cr>`>my`<mzgv`yo`z

" The opened content will still keep in screen after close vim
" This doesn't work well in SSH console
"set t_ti= t_te=

" Delete trailing white space on save
" autocmd BufWrite *.py :call DeleteTrailingWS()
" autocmd BufWrite *.c :call DeleteTrailingWS()
" autocmd BufWrite *.cpp :call DeleteTrailingWS()
" autocmd BufWrite *.js :call DeleteTrailingWS()
" autocmd BufWrite *.java :call DeleteTrailingWS()
" autocmd BufWrite *.xml :call DeleteTrailingWS()

" set list
" set listchars=tab:›\ ,extends:#,nbsp:. " Highlight problematic whitespace

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-colorscheme-swicher
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:colorscheme_switcher_define_mappings = 0
map <silent> <F8> :NextColorScheme<CR>
map <silent> <C-F8> :PrevColorScheme<CR>
let g:colorscheme_switcher_exclude = ['default', 'blue', 'evening', 'morning',
            \ 'pablo', 'darkblue', 'zellner', 'torte', 'peachpuff']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically add the file header for the new file
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>~m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Format JSON by json.tool
"nmap <C-J> :%!python -m json.tool<CR>:setfiletype json<CR>
nmap <F6> :!mocha -R spec --require spec/helper.js %:p<CR>
nmap <F7> :!./node_modules/.bin/istanbul cover ./node_modules/.bin/_mocha -- --require spec/helper.js %:p<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>z :set number!<CR>:set relativenumber!<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
" s/v to open file in different screen
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeWinPos = 'right'
let NERDTreeChDirMode = 2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: NERDTree-tab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_synchronize_view=0
let g:nerdtree_tabs_synchronize_focus=0
let g:nerdtree_tabs_open_on_console_startup=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: command-t
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <silent> <Leader>t :CommandT<CR>
map <C-t> :CommandT<CR>

let g:CommandTSmartCase = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20'
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" default by searching by filename, can be toggled to full-path mode by <C-d>
let g:ctrlp_by_filename = 0

nmap <leader>p: :CtrlP<CR>
nmap <leader>pr :CtrlPMRU<CR>
map <C-p>r :CtrlPMRU<CR>
nmap <leader>px :CtrlPMixed<CR>
map <C-p>x :CtrlPMixed<CR>
nmap <leader>pb :CtrlPBuffer<CR>
map <C-p>b :CtrlPBuffer<CR>

let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn$',
\ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\.o$\|\.obj$\|\.d$' }

" On Windows use "dir" as fallback command.
if executable('ag')
let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
elseif executable('ack-grep')
let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
elseif executable('ack')
let s:ctrlp_fallback = 'ack %s --nocolor -f'
else
let s:ctrlp_fallback = 'find %s -type f'
endif
if exists("g:ctrlp_user_command")
unlet g:ctrlp_user_command
endif
let g:ctrlp_user_command = {
\ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
\ },
\ 'fallback': s:ctrlp_fallback
\ }

" CtrlP extensions
let g:ctrlp_extensions = ['funky', 'modified']
let g:ctrlp_funky_syntax_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: buffergator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" New Buffergator window will be opened in horizontal top
"     "L"   : vertical left (full screen height)
"     "R"   : vertical right (full screen height)
"     "T"   : horizontal top (full screen width)
"     "B"   : horizontal bottom (full screen width)
let g:buffergator_viewport_split_policy = "T"

" Don't use default key mapping
let g:buffergator_suppress_keymaps = 0
let g:buffergator_suppress_mru_switch_into_splits_keymaps = 0

nnoremap <silent> <Leader>b :BuffergatorToggle<CR>
"nnoremap <silent> <Leader>B :BuffergatorClose<CR>
nnoremap <silent> <Leader>bp :BuffergatorMruCyclePre<CR>
nnoremap <silent> <Leader>bn :BuffergatorMruCycleNext<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-grepper
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:grepper={}
" Use the quickfix window.
let g:grepper.quickfix=1
" Open the quickfix window after the search finishes.
let g:grepper.open=1
" Switch to the quickfix window after the search finishes.
let g:grepper.switch=1
" Show the prompt by default.
let g:grepper.prompt=1
" Supported tools (use 'git' before 'ag').
let g:grepper.tools=['git', 'ag', 'ack', 'grep', 'findstr', 'sift', 'pt']
" Works like /, but uses vim-grepper to do the searching.
nnoremap <Leader>/ :Grepper<CR>
" Works like *, but uses vim-grepper to do the searching.
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: ctrlsf.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap \ <Plug>CtrlSFCwordExec
vmap <C-F> <Plug>CtrlSFVwordExec
vmap <C-F>p <Plug>CtrlSFVwordPath
nmap <C-F> <Plug>CtrlSFCwordExec
nmap <C-F>p <Plug>CtrlSFCwordPath
nmap <leader>fv <Esc>:CtrlSFToggle<CR>
nmap <leader>fp <Plug>CtrlSFCwordPath

" let g:ctrlsf_position = 'below'
" let g:ctrlsf_winsize = '30%'
let g:ctrlsf_auto_close = 0
let g:ctrlsf_confirm_save = 0
let g:ctrlsf_default_root = 'cwd'
let g:ctrlsf_context = '-C 2'
let g:ctrlsf_position = 'bottom'

" Note: cannot use <CR> or <C-m> for open
" Use : <sapce> or <tab>
let g:ctrlsf_mapping = {
\ "open"  : "<Enter>",
\ "openb" : "O",
\ "tab"   : "t",
\ "tabb"  : "T",
\ "prevw" : "p",
\ "quit"  : "q",
\ "next"  : "n",
\ "prev"  : "N",
\ "pquit" : "q",
\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-signature
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle the visible of mark and marker
nnoremap <silent> <Leader>mv :SignatureToggleSigns<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-move
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't use plugin's default key mapping
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: neocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
" Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
"     \ 'default' : '',
"     \ 'vimshell' : $HOME.'/.vimshell_hist',
"     \ 'scheme' : $HOME.'/.gosh_completions'
"         \ }
"
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return neocomplete#close_popup() . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
"
" " For cursor moving in insert mode(Not recommended)
" "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
" "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
" "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
" "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" " Or set this.
" "let g:neocomplete#enable_cursor_hold_i = 1
" " Or set this.
" "let g:neocomplete#enable_insert_char_pre = 1
"
" " AutoComplPop like behavior.
" "let g:neocomplete#enable_auto_select = 1
"
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplete#enable_auto_select = 1
" "let g:neocomplete#disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" " Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
" "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
" " For perlomni.vim setting.
" " https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-better-whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>d<space> :StripWhitespace<CR>
"nmap <leader><space>t :ToggleWhitespace<CR>
"
" autocmd FileType javascript,python,c,cpp,java,html,xml,json autocmd BufWritePre <buffer> StripWhitespace


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set laststatus=2
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ycm_complete_in_comments=1
" let g:ycm_confirm_extra_conf=0
" let g:ycm_collect_identifiers_from_tags_files=1
" inoremap <leader>; <C-x><C-o>
" set completeopt-=preview
" let g:ycm_min_num_of_chars_for_completion=1
" let g:ycm_cache_omnifunc=0
" let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_key_invoke_completion = '<M-;>'
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>

"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_python_binary_path = 'python'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-json
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-autoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F5> :Autoformat<CR>
" autocmd BufWrite *.py,*.js,*.json :Autoformat

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-indent-guide
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 0

if has("gui_running")
    let g:indent_guides_auto_colors = 1
else
    let g:indent_guides_auto_colors = 0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235
endif
:noremap <F11> :IndentGuidesToggle<CR>:set number!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: tComment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tcommentMaps = 0

" Comment one line
nnoremap <leader>cl :TComment<cr>
vnoremap <leader>cl :TComment<cr>

" Comment block, only useful on visual mode
vnoremap <leader>cb :TCommentBlock<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: tabular
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a( :Tabularize /(<CR>
vmap <Leader>a( :Tabularize /(<CR>
nmap <Leader>a[ :Tabularize /[<CR>
vmap <Leader>a[ :Tabularize /[<CR>
nmap <Leader>a{ :Tabularize /{<CR>
vmap <Leader>a{ :Tabularize /{<CR>
nmap <Leader>a- :Tabularize /-<CR>
vmap <Leader>a- :Tabularize /-<CR>
nmap <Leader>a* :Tabularize /*<CR>
vmap <Leader>a* :Tabularize /*<CR>
nmap <Leader>a< :Tabularize /<<CR>
vmap <Leader>a< :Tabularize /<<CR>
nmap <Leader>a" :Tabularize /"<CR>
vmap <Leader>a" :Tabularize /"<CR>
nmap <Leader>a' :Tabularize /'<CR>
vmap <Leader>a' :Tabularize /'<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-gitgutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
nmap <Leader>vv :GitGutterToggle<CR>
nmap <Leader>vn <Plug>GitGutterNextHunk
nmap <Leader>vp <Plug>GitGutterPrevHunk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gv :Gvsplit<CR>
nnoremap <leader>gt :Gtabedit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gd :Gdiff<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_foldlevel = 4
let g:tagbar_width = 32

" let g:tagbar_type_javascript = {
"             \ 'ctagsbin': 'jsctags'
"             \}
if !exists('g:tagbar_javascript_ctags_bin')
let g:tagbar_javascript_ctags_bin = 'esctags'
endif

if !exists('g:tagbar_javascript_ctags_memory_limit')
let g:tagbar_javascript_ctags_memory_limit = '128M'
endif

let g:tagbar_type_javascript = {
\ 'ctagsbin'  : g:tagbar_javascript_ctags_bin,
\ 'ctagsargs' : '--memory="' . tagbar_javascript_ctags_memory_limit . '" -f -',
\ 'kinds'     : [
    \ 'a:Parameters:0',
    \ 'v:Variables:0:0',
    \ 'p:Propertes:0:0',
    \ 'c:Context:1:0'
\ ],
\ 'sro'        : '::',
\ 'kind2scope' : {
    \ 'c' : 'context',
\ },
\ 'scope2kind' : {
    \ 'context'  : 'c'
\ }
\ }

" Map F2 to toggle the tag bar
nmap <F2> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'gometalinter']
let g:syntastic_go_gometalinter_args = "--fast --disable=gocyclo"

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_jshint_args = "-c ~/.jshintrc"

let g:syntastic_json_checkers = ['jsonlint']

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_pylint_args = ""

let g:syntastic_sh_checkers = ['bashate']

let g:syntastic_c_checkers = ['gcc']
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_html_checkers = ['jshint', 'w3']
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_vim_checkers = ['vimlint']
let g:syntastic_xml_checkers = ['xmllint']
let g:syntastic_yaml_checkers = ['jsyaml']
let g:syntastic_zsh_checkers = ['zsh']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 0
let g:syntastic_echo_current_error = 0
let g:syntastic_enable_ballons = 0

" Manually do syntastic check
noremap <F3> :SyntasticCheck<CR>:Errors<CR>

" Close the error list
noremap <F4> ::SyntasticReset<CR>

noremap <leader>sn :lnext<CR>
noremap <leader>sp :lprevious<CR>

"workaround for the redraw problem that caused by syntastic
"  force  a :redraw! on "events" that scramble the screen with
"  syntax highlighting enabled.
" see https://github.com/vim-syntastic/syntastic/issues/822
let g:syntastic_full_redraws=1
set ttyfast
" au FileWritePost * :redraw!
" au TermResponse * :redraw!
" au TextChanged * :redraw!
" au QuickFixCmdPre * :redraw!
" au QuickFixCmdPost * :redraw!


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: ALE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\    'python': ['flake8'],
\}
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 0
let g:ale_lint_on_save = 0
let g:ale_open_list = 1
let g:ale_enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: python-mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode = 1

let g:pymode_options = 1
" let g:pymode_options_max_line_length = 128
" let g:pymode_options_colorcolumn = 1

let g:pymode_indent = 1
let g:pymode_folding = 0
let g:pymode_motion = 1

let g:pymode_doc = 1
let g:pymode_doc_bind = '<leader>do'

let g:pymode_run = 0
" let g:pymode_run_bind = '<leader>pr'

let g:pymode_rope = 0
"let g:pymode_rope_completion = 1
"let g:pymode_rope_complete_on_dot = 1
"let g:pymode_rope_autoimport = 1
"let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime']
"let g:pymode_rope_goto_definition_bind = '<leader>gd'

let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_lint = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: jedi-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#goto_command = "go"
let g:jedi#goto_assignments_command = "ga"
let g:jedi#goto_definitions_command = "gd"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "gn"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "gr"
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: quickrun
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: Rainbow Parentheses
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rbpt_colorpairs = [
\ ['brown',       'RoyalBlue3'],
\ ['darkgray',    'DarkOrchid3'],
\ ['darkgreen',   'firebrick3'],
\ ['darkcyan',    'RoyalBlue3'],
\ ['darkred',     'SeaGreen3'],
\ ['darkmagenta', 'DarkOrchid3'],
\ ['brown',       'firebrick3'],
\ ['gray',        'RoyalBlue3'],
\ ['darkmagenta', 'DarkOrchid3'],
\ ['darkgreen',   'RoyalBlue3'],
\ ['darkcyan',    'SeaGreen3'],
\ ['darkred',     'DarkOrchid3'],
\ ['red',         'firebrick3'],
\ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-expand-region
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-easy-motion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
"map <Leader><leader>. <Plug>(easymotion-repeat)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: tern for vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tern_show_argument_hints = 'no' "or 'on_hold' or 'on_move'
let g:tern_map_keys = 0
nnoremap <buffer> <Leader>jm :TernDoc<CR>
nnoremap <buffer> <Leader>jb :TernDocBrowse<CR>
nnoremap <buffer> <Leader>jy :TernType<CR>
nnoremap <buffer> <Leader>jd :TernDef<CR>
nnoremap <buffer> <Leader>jp :TernDefPreview<CR>
nnoremap <buffer> <Leader>js :TernDefSplit<CR>
nnoremap <buffer> <Leader>jt :TernDefTab<CR>
nnoremap <buffer> <Leader>jr :TernRefs<CR>
nnoremap <buffer> <Leader>jR :TernRename<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: Hound
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>fh :Hound<space>
let g:hound_repos="*"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: AnsiEsc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd BufEnter *.log AnsiEsc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: ultisnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-l>"
" let g:UltiSnipsListSnippets="<Leader>ul"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
" let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: QFEnter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:qfenter_open_map =  ['<CR>', '<Leader>xo']
let g:qfenter_vopen_map = ['<Leader>xv']
let g:qfenter_hopen_map = ['<Leader>xh']
let g:qfenter_topen_map = ['<Leader>xt']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically format code and import missing package whiling go code
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-sneak
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#s_next = 1
let g:sneak#label = 0
map f <Plug>Sneak_s
map F <Plug>Sneak_S
map t <Plug>Sneak_t
map T <Plug>Sneak_T

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-easyclip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap M <Plug>MoveMotionEndOfLinePlug

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" automatically set the header of the new file
function! AutoSetFileHead()
    " .sh
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    " python
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        " call append(1, "\# encoding: utf-8")
    endif

    " javascript (node.js)
    "   if &filetype == 'javascript'
    "   call setline(1, "\#!/usr/bin/env node")
    " endif

    normal G
    normal o
    normal o
endfunc

function! AutoSetFileLineLimit()
    " python
    if &filetype == 'python' || &filetype == 'go'
        setlocal textwidth=128
        setlocal colorcolumn=+1
        let &colorcolumn="80,".join(range(129, 999), ",")
        return
    endif

    " javascript (node.js)
    if &filetype == 'javascript'
        setlocal textwidth=100
        setlocal colorcolumn=+1
        let &colorcolumn="80,".join(range(101,999), ",")
        return
    endif

    setlocal textwidth=100
    setlocal colorcolumn=+1
    let &colorcolumn=join(range(81,999),",")
endfunc


" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        exec t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
