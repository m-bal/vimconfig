"""" Enable Vundle: vim plugin manager

" required before Vundle initialization
set nocompatible        " disable compatibility mode with vi
filetype off           " disable filetype detection (but re-enable later, see below)

" set the runtime path to include Vundle, and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 Plugin 'ervandew/supertab'
 Plugin 'scrooloose/nerdtree'
 Plugin 'sheerun/vim-polyglot'
 Plugin 'mhinz/vim-startify'
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'tpope/vim-fugitive'
 Plugin 'vim-syntastic/syntastic'
 Plugin 'yuttie/comfortable-motion.vim'
 Plugin 'Townk/vim-autoclose'
 Plugin 'jeetsukumaran/vim-indentwise'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 call vundle#end()

"""" Basic Behavior
set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping
set tw=79
set fo+=t

"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk

inoremap jk <esc>
inoremap kj <esc>

"get the tagbar toggle

"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/

colorscheme dracula      " good colorschemes: murphy, slate, molokai, badwolf, solarized

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on


"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>
map <C-n> :NERDTreeToggle<CR>

""" For syntastic/syntastic checking recommended settings on github page
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



"""" Miscellaneous settings that might be worth enabling

"set cursorline         " highlight current line
set background=dark    " configure Vim to use brighter colors
set autoread           " autoreload the file in Vim if it has been changed outside of Vim
