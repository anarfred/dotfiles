" Config générale {{{
filetype off                                 " Helps force plugins to load correctly when it is turned back on below
filetype plugin indent on                    " For plugins to load correctly
let g:tex_comment_nospell= 1
let g:tex_flavor = "latex"
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


" Whitespace
set wrap
set textwidth=0
set wrapmargin=0
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

" Remap help key. NE FONCTIONNE PAS AVEC NVIM
"inoremap <F1> <ESC>:set invfullscreen<CR>a
"nnoremap <F1> :set invfullscreen<CR>
"vnoremap <F1> :set invfullscreen<CR>
"}}}
" Raccourcis {{{
" bind K to grep word under cursor
" nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
"nnoremap \ :Ag<SPACE>

" Switching buffer
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Garde les résultats au centre de l'écan
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <F3> :NumbersToggle<CR> " Switch between relative and absolute line numbers
"}}}
" Plugins {{{
"  VimPlug {{{
" call plug#begin('~/.vim/plugged') " Pour vim
call plug#begin('~/.local/share/nvim/plugged') " Pour neovim

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
"Plug 'https://github.com/junegunn/vim-github-dashboard.git' " Permet seulement de voir les activité dans github
Plug 'junegunn/goyo.vim'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/syntastic'
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
Plug 'Lokaltog/vim-easymotion'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'xuhdev/vim-latex-live-preview'

call plug#end() " Add plugins to &runtimepath
"}}}
" Ack {{{
nnoremap <leader>a :Ack 
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" }}}
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

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"let g:ctrlp_user_command = 'ack %s -l --nocolor -g ""'
"}}}
" EasyAlign {{{
xmap ga <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)
"}}}
"{{{ EasyMotion
nmap <leader>f <Plug>(easymotion-f2)
nmap <leader>F <Plug>(easymotion-F2)
"}}}
" Gundo {{{
nnoremap <leader>g :GundoToggle<CR>
" }}}
" NERDTree {{{
map <C-n> :NERDTreeToggle<CR> " Toggle the left tree
" }}}
" Synctastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap <leader>s :SyntasticToggleMode<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_tex_chktex_args = "-n10 -n9 -n17"
" }}}
" Vim-instant-markdown {{{
" https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0    " disable autostart
map <leader>md :InstantMarkdownPreview<CR>
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
" Vim-session {{{
" save session
"nnoremap <leader>s :mksession<CR>
" source: https://github.com/Netherdrake/Dotfiles/blob/master/config/nvim/init.vim
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" }}}
" Vimtex {{{
let g:vimtex_fold_enabled = 1
" let g:vimtex_fold_comments = 1
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique @pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

 if has('nvim')
   let g:vimtex_latexmk_progname = 'nvr'
 endif
" }}}
" Vim-wiki {{{
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" helppage -> :h vimwiki-syntax 
" }}}
" }}}
" Thème (doit rester à la fin pour le colorscheme){{{
colorscheme base16-default-dark 
let base16colorspace=256
set background=dark
let g:airline#extensions#tabline#enabled = 1 " Allow usage of plugins using theme
let g:airline_powerline_fonts = 1            " Allow usage of powerline fonts
let g:airline_theme='base16_tomorrow'                 " Select airline theme
" }}}
