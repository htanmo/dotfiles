let mapleader = ' '
nnoremap <Space> <Nop>

noremap <F1> <ESC>:tabprev <CR>
vnoremap <F1> <ESC>:tabprev <CR>
inoremap <F1> <ESC>
noremap <TAB> %

noremap <F2> :bprev<CR>
noremap <F3> :bnext<CR>

call plug#begin('~/.vim/plugged')

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/Snippets']
let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/goyo.vim'
" let g:goyo_linenr=1
let g:goyo_height='80%'
let g:goyo_width='80%'

Plug 'honza/vim-snippets'

Plug 'nanotech/jellybeans.vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'sheerun/vim-polyglot'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'Lokaltog/vim-monotone'

call plug#end()
":PlugInstall


let c_syntax_for_h=""
let g:netrw_keepdir = 0
let g:netrw_winsize = 30
let g:netrw_localrmdir='rm -r'
let g:netrw_localcopydircmd = 'cp -r'
let g:netrw_banner = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'

if stridx(&runtimepath, expand(vimDir)) == -1
  " vimDir is not on runtimepath, add it
  let &runtimepath.=','.vimDir
endif

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <Leader>da :Lexplore<CR>

noremap <Leader>b ^
noremap <Leader>e <ESC>:e .<CR>
noremap <Leader>r <C-R>
noremap <Leader>j <C-W><C-J>
noremap <Leader>u i_<ESC>r
noremap <Leader>n :nohlsearch<CR>
noremap <Leader>q :q<CR>
noremap <Leader>w :w<CR>
noremap <Leader>o <C-O>
noremap <Leader>i <C-I>
noremap <Leader>a ggVG
noremap <Leader>/ 0i//<ESC>
noremap <Leader>s :source % <CR>
noremap <Leader>z :Goyo <CR>

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

tnoremap <Esc> <C-\><C-n>

set statusline=
set laststatus=2

colorscheme jellybeans
set showcmd
set autoindent
set autoread
set cino+=L0
set expandtab
set guifont=Menlo\ Regular:h16
set history=1000
set ignorecase
set incsearch
set mousehide
set hidden
set noerrorbells
set noswapfile
set hlsearch
set number
set pastetoggle=
set shiftwidth=4
set smarttab
set tabstop=4
set relativenumber
set encoding=utf-8
set ttimeout
set ttimeoutlen=1
set ttyfast
set ruler
set t_co=256
set matchpairs+=<:>
set splitbelow
set splitright
set cursorline
set foldmethod=syntax
set nofoldenable

filetype on
filetype plugin on

syntax on

set shellslash
filetype indent on
set sw=4
set iskeyword+=:
