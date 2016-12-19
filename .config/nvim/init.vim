" General configs {{{
let base16colorspace=256  " Access colors present in 256 colorspace
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:airline_powerline_fonts = 1            " Allow usage of powerline fonts
let g:airline#extensions#tabline#enabled = 1 " Allow usage of plugins using theme
let g:airline_theme='base16-default-dark'                 " Select airline theme
let mapleader = "\<Space>"                   " Pick a leader key
let g:tex_flavor = "latex"
set nocompatible                             " Don't try to be vi compatible
set foldmethod=marker                        " How to fold
syntax on                                    " Turn on syntax highlighting
filetype off                                 " Helps force plugins to load correctly when it is turned back on below
filetype plugin indent on                    " For plugins to load correctly
set modelines=0                              " Security
set number                                   " Show line numbers
set ruler                                    " Show file stats
set visualbell                               " Blink cursor on error instead of beeping (grr)
set encoding=utf-8                           " Encoding
set hidden                                   " Allow hidden buffers
set ttyfast                                  " Rendering
set laststatus=2                             " Status bar 

" open ag.vim
nnoremap <leader>a :Ack 
" save session
nnoremap <leader>s :mksession<CR>

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>
"}}}
"  Plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'vim-latex/vim-latex'
Plug '907th/vim-auto-save'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/promptline.vim'
Plug 'myusuf3/numbers.vim'
Plug 'mileszs/ack.vim'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chriskempson/base16-vim'

call plug#end() " Add plugins to &runtimepath
"}}}
" New shortcuts {{{

map <C-n> :NERDTreeToggle<CR> " Toggle the left tree
nnoremap <F3> :NumbersToggle<CR> " Switch between relative and absolute line numbers
xmap ga <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)

"}}}
" CTRLP {{{
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
    \}

    " Use the nearest .git directory as the cwd
    " This makes a lot of sense if you are working on a project that is in version
    " control. It also supports works with .svn, .hg, .bzr.
    let g:ctrlp_working_path_mode = 'r'

    " Use a leader instead of the actual named binding
    nmap <leader>p :CtrlP<cr>

    " Easy bindings for its various modes
    nmap <leader>bb :CtrlPBuffer<cr>
    nmap <leader>bm :CtrlPMixed<cr>
    nmap <leader>bs :CtrlPMRU<cr>

    let g:ctrlp_user_command = 'ack %s -l --nocolor -g ""'
"}}}
" Vim-Latex {{{
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
set sw=2
set iskeyword+=:
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
"}}}
" Color scheme (terminal) {{{
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme solarized
" }}}
