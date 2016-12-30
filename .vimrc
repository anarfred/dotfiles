"  oo          oo   dP               oo
"                   88
"  dP 88d888b. dP d8888P    dP   .dP dP 88d8b.d8b.
"  88 88'  `88 88   88      88   d8' 88 88'`88'`88
"  88 88    88 88   88   dP 88 .88'  88 88  88  88
"  dP dP    dP dP   dP   88 8888P'   dP dP  dP  dP
"  oooooooooooooooooooooooooooooooooooooooooooooooo

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
autocmd! BufWritePost * Neomake
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

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

" Markdown
"augroup markdown
"    au!
"    au BufNewFile,BufRead *.md,*.markdown,*.mmd setlocal filetype=ghmarkdown
"augroup END


let g:pandoc#after#modules#enabled = ["supertab", "ultisnips"]

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Clear search
map <leader><space> :let @/=''<cr>

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

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" Switching buffer
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Garde les résultats au centre de l'écan
nnoremap n nzzzv
nnoremap N Nzzzv

" Can be typed even faster than jj.
:imap jk <Esc>
nnoremap <F3> :NumbersToggle<CR> " Switch between relative and absolute line numbers
"}}}
" Scripts {{{
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
" }}}
" Plugins {{{
"  VimPlug {{{
" call plug#begin('~/.vim/plugged') " Pour vim
call plug#begin('~/.local/share/nvim/plugged') " Pour neovim

"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'https://github.com/junegunn/vim-github-dashboard.git' " Permet seulement de voir les activité dans github
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'myusuf3/numbers.vim'
"Plug 'scrooloose/syntastic'
"Plug 'vim-latex/vim-latex'
"Plug 'vim-scripts/ShowMarks'
"Plug 'vimwiki/vimwiki'
Plug '907th/vim-auto-save'
Plug 'Lokaltog/vim-easymotion'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe' "À chaque maj, recompiler avec ~/.local/share/nvim/plugged/YouCompleteMe/install.py
Plug 'beloglazov/vim-online-thesaurus'
Plug 'blindFS/vim-taskwarrior'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'lervag/vimtex'
Plug 'mhinz/vim-halo'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sjl/gundo.vim'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'wikitopian/hardmode'
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
"" CTRLP {{{
"" Setup some default ignores
"let g:ctrlp_custom_ignore = {
"      \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
"      \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
"      \}
"
"" Use the nearest .git directory as the cwd
"" This makes a lot of sense if you are working on a project that is in version
"" control. It also supports works with .svn, .hg, .bzr.
"let g:ctrlp_working_path_mode = 'r'
"
"" Use a leader instead of the actual named binding
"nmap <leader>p :CtrlP<cr>
"
"" Easy bindings for its various modes
"nmap <leader>bb :CtrlPBuffer<cr>
"nmap <leader>bm :CtrlPMixed<cr>
"nmap <leader>bs :CtrlPMRU<cr>
"
"" The Silver Searcher
"if executable('ag')
"  " Use ag over grep
"  set grepprg=ag\ --nogroup\ --nocolor
"
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"endif
"
""let g:ctrlp_user_command = 'ack %s -l --nocolor -g ""'
""}}}
" EasyAlign {{{
xmap ga <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)
"}}}
"{{{ EasyMotion
nmap <leader>f <Plug>(easymotion-f2)
nmap <leader>F <Plug>(easymotion-F2)
"}}}
" FZF {{{

" Easy bindings for its various modes
nmap <leader>bb :Buffer<cr>
nmap <leader>bm :Marks<cr>
nmap <leader>bf :Files<cr>
nmap <leader>bF :Files ~<cr>
nmap <leader>bh :History<cr>

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
"let g:fzf_layout = { 'window': 'enew' }
"let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
" [Files] Extra options for fzf
"   e.g. File preview using Highlight
"        (http://www.andre-simon.de/doku/highlight/en/highlight.html)
let g:fzf_files_options =
  \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
" }}}
" Gundo {{{
nnoremap <leader>G :GundoToggle<CR>
" }}}
" Goyo + Limelight {{{
nnoremap <leader>g :Goyo<CR>
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set norelativenumber
  set linebreak
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set relativenumber
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
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
" {{{ Neomake
let g:neomake_open_list = 2
let g:neomake_tex_chktex_maker = {
      \ 'args': ['-n10 -n9 -n17'],
      \ }
" }}}
" Numbers {{{
let g:numbers_exclude = ['goyo', 'tagbarr search"c', 'gundo', 'minibufexpl', 'nerdtree']
" }}}
" Vim-instant-markdown {{{
" https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0    " disable autostart
map <leader>md :InstantMarkdownPreview<CR>
"}}}
" Vim-markdown {{{
let g:vim_markdown_toc_autofit = 1
" }}}
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
colorscheme base16-eighties
let base16colorspace=256
set background=dark
let g:airline#extensions#tabline#enabled = 1 " Allow usage of plugins using theme
let g:airline_powerline_fonts = 1            " Allow usage of powerline fonts
let g:airline_theme='base16'                 " Select airline theme
" }}}
