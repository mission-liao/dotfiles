" Enhance command-line completion
set wildmenu
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don't redraw while executing macros (good performance config)
set lazyredraw
" Enable filetype plugins
filetype plugin on
filetype indent on 
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Enable syntax highlighting
syntax on
" Make tabs as wide as 4 spaces
set shiftwidth=4
set tabstop=4
" Use spaces instead of tabs
set expandtab
" Show 'invisible' characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" ignore case of searches
set ignorecase 
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
set novisualbell
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Show matching brackets when text indicator is over them
set showmatch
" Add a bit extra margin to the left
set foldcolumn=1
" Wrap lines
set wrap
" Make backspace works for most cases
set backspace=indent,eol,start
" Hight column 80
set colorcolumn=80

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme peaksea
catch
endtry

set background=dark

" =============================================================
" => Remap default shortcut
" =============================================================
" Change mapleader
let mapleader="\\"
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>ty :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>tx :tabnext 
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" =============================================================
" => Nerd Tree
" =============================================================
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
" =============================================================
" => CtrlP
" =============================================================
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<C-f>'
map <leader>j :CtrlP<cr>
map <C-b> :CtrlPBuffer<cr>
map <C-s> :CtrlPMixed<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\'
" =============================================================
" => Rust
" =============================================================
" Automatically call RustFmt when saving files
let g:rustfmt_autosave = 1
" =============================================================
" => completor
" =============================================================
let g:completor_racer_binary = $HOME."/.cargo/bin/racer"
" =============================================================
" => Hashtags 
" =============================================================
map <leader>ss :SaveNote<cr>
map <leader>uu :UpdateNote<cr>
" =============================================================
" => vim-go
" =============================================================
let g:go_fmt_command = "goimports"
let g:go_implements_mode = 'gopls'
let g:go_referrers_mode = 'gopls'
map gr :GoReferrers<cr>
" =============================================================
" => vim-ack
" =============================================================
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

if executable('ag')
  let g:ackprg = 'ag --vimgrep --nogroup --column'
endif

let g:ackhighlight = 1
