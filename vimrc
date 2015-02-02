" aLl system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" " /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" " you can find below.  If you wish to change any of those settings, you
" should
" " do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" " everytime an upgrade of the vim packages is performed.  It is recommended
" to
" " make changes after sourcing archlinux.vim since it alters the value of the
" " 'compatible' option.
"
" " This line should not be removed as it ensures that various options are
" " properly set to work with the Vim-related packages.
runtime! archlinux.vim
" 
set nocompatible
filetype off
" Cache les buffers plutôt que les fermer
set hidden
" Affichage des numéros de ligne
set number
" Met en surbrillance les termes lors de recherches
set hlsearch
" Commence une recherche dès les premiers termes tapés
set incsearch
" Indentation adaptée au type de fichier
filetype plugin indent on
" Permet de voir les commandes tappées
set showcmd

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

" Plugin 'scrooloose/nerdtree.git'

" Plugin 'Buffergator'

Plugin 'LaTeX-Suite-aka-Vim-LaTeX'

Plugin 'ScrollColors'

Plugin 'SuperTab'

Plugin 'bling/vim-airline'

Plugin 'edkolev/tmuxline.vim'

Plugin 'edkolev/promptline.vim'

Plugin 'The-NERD-Commenter'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'xolox/vim-notes'

Plugin 'xolox/vim-misc'

Plugin 'flazz/vim-colorschemes'

Plugin 'rhysd/vim-grammarous'

Plugin 'LanguageTool'

Plugin 'itchyny/calendar.vim'

" Plugin 'coot/atp_vim'

Plugin 'Align'

Plugin 'junegunn/limelight.vim'

Plugin 'danchoi/vmail'

Plugin 'xolox/vim-colorscheme-switcher'

" Plugin 'taglist.vim'

Plugin 'wincent/Command-T'

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Remplace shift+; par ;
" nnoremap ; :

" Raccourci pour NERDtree
map <C-m> :NERDTreeToggle<CR>

" Changer de buffer
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Permet de faire sudo a posteriori
cmap w!! w !sudo tee % >/dev/null

" Coloration syntaxique
"syn on
"set t_Co=256

"if &term!="xterm"
syntax enable
set background=dark
colorscheme molokai
	set t_Co=256
"	colorscheme Mustang
"endif	
" LuciusBlack
"map <ALT-F3>:NEXTCOLOR<cr>
"map <ALT-F2>:PREVCOLOR<cr>

" "Nécessaire au fonctionnement de latex-suite
set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat = 'pdf'
let gTex_MultipleCompileFormats = 'pdf, aux'

" vim-latex for xetex!
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf='zathura'
let g:Tex_CompileRule_pdf = 'xelatex --interaction=nonstopmode $*'
map <f2> :w<cr><leader>ll
let g:Tex_MultipleCompileFormats = 'pdf'

"let g:tex_flavor = 'xelatex'
"let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
let g:airline_theme='lucius'
" let g:airline_left_sep='|'
" let g:airline_right_sep='|'
" let g:colorscheme_switcher_define_mappings= 'F8'
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
" Permet d'avoir la liste des buffers ouverts
let g:airline#extensions#tabline#enabled = 1

" Rend possible l'utilisation des polices powerline
let g:airline_powerline_fonts = 1

let g:notes_directories = ['~/Documents/Notes', '~/Dropbox/Shared Notes']
" if !exists(‘g:airlinesymbols’)
	" let g:airlinesymbols = {}
" endif
" let g:airlineleftsep = ‘»’
" let g:airlineleftsep = ‘?’
" let g:airlinerightsep = ‘«’
" let g:airlinerightsep = ‘?’
" let g:airlinesymbols.linenr = ‘?’
" let g:airlinesymbols.linenr = ‘?’
" let g:airlinesymbols.linenr = ‘¶’
" let g:airlinesymbols.branch = ‘? ‘
" let g:airlinesymbols.paste = ‘?’
" let g:airlinesymbols.paste = ‘Þ’
" let g:airlinesymbols.paste = ‘?’
" let g:airlinesymbols.whitespace = ‘?’

" Permet de rendre la airline constamment active
set laststatus=2

" Activer automatiquement la correction orthographique
" autocmd BufEnter *.mkd set spell
" autocmd BufEnter *.tex set spell spelllang=fr

" Changer la langue de correction orthographique
map <silent> <CTRL><F6> "<Esc>:silent setlocal spell! spelllang=en<CR>"
map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"

" Espace au lieu de \ comme leader
let mapleader=" "

" Hardmode vim
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>
