" General configs {{{
filetype off                                 " Helps force plugins to load correctly when it is turned back on below
filetype plugin indent on                    " For plugins to load correctly
let g:airline#extensions#tabline#enabled = 1 " Allow usage of plugins using theme
let g:airline_powerline_fonts = 1            " Allow usage of powerline fonts
let g:airline_theme='base16_eighties'                 " Select airline theme
let g:tex_comment_nospell= 1
let g:tex_flavor = "latex"
let base16colorspace=256
let mapleader = "\<Space>"                   " Pick a leader key
let maplocalleader = ','
set autochdir
set encoding=utf-8                           " Encoding
set foldmethod=marker                        " How to fold
set hidden                                   " Allow hidden buffers
set laststatus=2                             " Status bar 
set modelines=0                              " Security
set nocompatible                             " Don't try to be vi compatible
set number                                   " Show line numbers
set ruler                                    " Show file stats
set spell spelllang=fr
set ttyfast                                  " Rendering
set visualbell                               " Blink cursor on error instead of beeping (grr)
set wildmode=full wildmenu
syntax on                                    " Turn on syntax highlighting

" Vimtex
let g:vimtex_fold_enabled = 1
" let g:vimtex_fold_comments = 1
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique @pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" Switching buffer
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

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

" Plug 'Valloric/YouCompleteMe'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'vim-latex/vim-latex'
" Plug 'vim-scripts/ShowMarks'
Plug '907th/vim-auto-save'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'blindFS/vim-taskwarrior'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'godlygeek/tabular'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'lervag/vimtex'
Plug 'mileszs/ack.vim'
Plug 'myusuf3/numbers.vim'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'vimwiki/vimwiki'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'xuhdev/vim-latex-live-preview'

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
"set t_Co=256
set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
colorscheme base16-eighties
" }}}
" Vim-wiki {{{
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" helppage -> :h vimwiki-syntax 
" }}}
" vim-instant-markdown - Instant Markdown previews from Vim {{{
" https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0    " disable autostart
map <leader>md :InstantMarkdownPreview<CR>
"}}}
